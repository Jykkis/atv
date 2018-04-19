#!/usr/bin/env python
#
# Software License Agreement (BSD License)
#
# Copyright (c) 2009, Willow Garage, Inc.
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
#
#  * Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
#  * Redistributions in binary form must reproduce the above
#    copyright notice, this list of conditions and the following
#    disclaimer in the documentation and/or other materials provided
#    with the distribution.
#  * Neither the name of the Willow Garage nor the names of its
#    contributors may be used to endorse or promote products derived
#    from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
# FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
# COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
# INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
# BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
# CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
# LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
# ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.

PKG = 'camera_calibration'
import roslib; roslib.load_manifest(PKG)
import os
import sys

from camera_calibration.calibrator import cvmat_iterator, MonoCalibrator, StereoCalibrator, CalibrationException, ChessboardInfo

def cal_from_tarfile(boards, tarname, mono = False):
    if mono:
        calibrator = MonoCalibrator(boards)
    else:
        calibrator = StereoCalibrator(boards)

    calibrator.do_tarfile_calibration(tarname)

    print calibrator.ost()

if __name__ == '__main__':
    from optparse import OptionParser
    parser = OptionParser("%prog TARFILE [ opts ]")
    parser.add_option("--mono", default=False, action="store_true", dest="mono",
                      help="Monocular calibration only. Calibrates left images.")
    parser.add_option("-s", "--size", default=[], action="append", dest="size",
                      help="specify chessboard size as NxM [default: 8x6]")
    parser.add_option("-q", "--square", default=[], action="append", dest="square",
                      help="specify chessboard square size in meters [default: 0.108]")
    options, args = parser.parse_args()
    
    if len(options.size) != len(options.square):
        parser.error("Number of size and square inputs must be the same!")
    
    if not options.square:
        options.square.append("0.108")
        options.size.append("8x6")

    boards = []
    for (sz, sq) in zip(options.size, options.square):
        info = ChessboardInfo()
        info.dim = float(sq)
        size = tuple([int(c) for c in sz.split('x')])
        info.n_cols = size[0]
        info.n_rows = size[1]

        boards.append(info)

    if not boards:
        parser.error("Must supply at least one chessboard")

    if not args:
        parser.error("Must give tarfile name")
    if not os.path.exists(args[0]):
        parser.error("Tarfile %s does not exist. Please select valid tarfile" % args[0])

    tarname = args[0]

    cal_from_tarfile(boards, tarname, options.mono)
