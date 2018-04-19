extern "C" {

// TYPE DEFINE
typedef char           i8;
typedef unsigned char  u8;
typedef short          i16;
typedef unsigned short u16;
typedef unsigned long  u32;
typedef int            i32;

/* IO Control Code */
#define ACRODEV_MAGIC 'A'
#define ACRODEV_PROBE_S4    _IOR(ACRODEV_MAGIC, 0x1, unsigned char)
#define ACRODEV_RESET_S4    _IOW(ACRODEV_MAGIC, 0x2, unsigned char)


/* Get or set GPIO channels */
#define ACRODEV_GET_GPIO_CH _IOR(ACRODEV_MAGIC, 0x3, unsigned char)
#define ACRODEV_SET_GPIO_CH _IOW(ACRODEV_MAGIC, 0x4, unsigned char)

/* Get or set Watchdog timer */
#define ACRODEV_GET_WTD     _IOR(ACRODEV_MAGIC, 0x5, unsigned char)
#define ACRODEV_SET_WTD     _IOW(ACRODEV_MAGIC, 0x6, unsigned char)

/* Error Code */
//#define ERR_GPIO     (0x1 << 24)
//#define ERR_WATCHDOG (0x2 << 24)
//#define ERR_POWER    (0x3 << 24)
//#define ERR_CANBUS   (0x4 << 24)
/* ----------------------------------------------------------------------------------------------- */
/* ----------------------------------------------------------------------------------------------- */
/* ---------------------------------------- GPIO ------------------------------------------------- */
/* ----------------------------------------------------------------------------------------------- */
/* ----------------------------------------------------------------------------------------------- */
i32	getChLevel(u8 *val);
i32	setChLevel(u8 val);

/* ----------------------------------------------------------------------------------------------- */
/* ----------------------------------------------------------------------------------------------- */
/* ---------------------------------------- Watchdog Timer --------------------------------------- */
/* ----------------------------------------------------------------------------------------------- */
/* ----------------------------------------------------------------------------------------------- */
u8    getWtdTimer(void);
void  setWtdTimer(u8 value);

/* ----------------------------------------------------------------------------------------------- */
/* ----------------------------------------------------------------------------------------------- */
/* ---------------------------------------- Power Subsystem -------------------------------------- */
/* ----------------------------------------------------------------------------------------------- */
/* ----------------------------------------------------------------------------------------------- */

#define PWR_GET_PWRVER_CMD               0xF0 // ok
#define PWR_LOAD_DEFAULT_CMD	           0xF1 // ok
#define PWR_SET_REMOTE_SWITCH_CMD	       0xF2 // ok
#define PWR_GET_REMOTE_SWITCH_CMD	       0xF3 // ok
#define PWR_SET_BURNING_MODE_CMD	       0xF4 // ok
#define PWR_GET_BURNING_MODE_CMD	       0xF5 // ok
#define PWR_GET_MAIN_BATTERY_CMD	       0xB0 // ok
#define PWR_SET_MAIN_BATTERY_MONITOR_CMD 0xB1 // ok
#define PWR_GET_MAIN_BATTERY_MONITOR_CMD 0xB2 // ok
#define PWR_SET_MAIN_BATTERY_DELTA_CMD	 0xB3 // ok
#define PWR_GET_MAIN_BATTERY_DELTA_CMD	 0xB4 // ok
#define PWR_SET_POWERON_DELAY_CMD	       0xC0
#define PWR_GET_POWERON_DELAY_CMD	       0xC1
#define PWR_SET_SOFTOFF_DELAY_CMD	       0xC2 // ok
#define PWR_GET_SOFTOFF_DELAY_CMD	       0xC3 // ok
#define PWR_SET_SHUTDOWN_DELAY_CMD	     0xC4 // ok
#define PWR_GET_SHUTDOWN_DELAY_CMD	     0xC5 // ok
#define PWR_SET_HARDOFF_DELAY_CMD	       0xC6 // ok
#define PWR_GET_HARDOFF_DELAY_CMD	       0xC7 // ok

#define ENABLED  0x5A
#define DISABLED 0xA5

/* The PIC Information is a 11 byte ASCII code,
 * The info[11] is the '\0' terminating byte.
 */
typedef struct {
	u8 info[12];
} PicInfo;

i32 getPicFwVer(PicInfo *ver);
i32 setPicDefault(void);
i32 setRemoteSwitch(u8 val);
i32 getRemoteSwitch(u8* val);
i32 setBurningMode(u8 val);
i32 getBurningMode(u8* val);
i32 getBattVolt(float* val);
i32 setBattMonitor(u8 val);
i32 getBattMonitor(u8* val);
i32 setBattDelta(float val);
i32 getBattDelta(float* val);
i32 setSoftOffDelay(u32 val);
i32 getSoftOffDelay(u32* val);
i32 setHardOffDelay(u32 val);
i32 getHardOffDelay(u32* val);
i32 setPowerOnDelay(u32 val);
i32 getPowerOnDelay(u32* val);
i32 setShutdownDelay(u32 val);
i32 getShutdownDelay(u32* val);

/* ----------------------------------------------------------------------------------------------- */
/* ----------------------------------------------------------------------------------------------- */
/* ------------------------------------------ CAN Bus PIC ---------------------------------------- */
/* ----------------------------------------------------------------------------------------------- */
/* ----------------------------------------------------------------------------------------------- */
#ifndef __CANMSG_TYPE
#define __CANMSG_TYPE
struct CanMsg {
	u32 id;
	u8  id_type;
	u8  length;
	u8  data[8];
};
#endif

#ifndef __CANMASK_TYPE
#define __CANMASK_TYPE
struct CanMask {
	u8  maskId;
	u32 mask;
};
#endif

#ifndef __CANFILTER_TYPE
#define __CANFILTER_TYPE
struct CanFilter {
	u8  filterId;
	u8  filterType;
	u32 filter;
};
#endif

#define READ_VER_CMD                  0xC0

#define RESET_IBUT_CMD                0xC1
#define READ_IBUT_CMD                 0xC2
#define WRITE_IBUT_CMD                0xC3

#define GET_CAN_BAUDRATE_CMD          0xC4
#define SET_CAN_BAUDRATE_CMD          0xC5

#define GET_CAN_MSG_CMD               0xC6
#define SET_CAN_MSG_CMD               0xC7

#define GET_CAN_MASK_CMD              0xC8
#define SET_CAN_MASK_CMD              0xC9

#define GET_CAN_FILTER_CMD            0xCA
#define SET_CAN_FILTER_CMD            0xCB

//CHARLIE ADD
#define GET_CAN_MODE_CMD	      0xCC
#define SET_CAN_MODE_CMD	      0xCD

#define FULL_MODE_EN		      3
#define FULL_MODE_DN		      0
#define ONLY_RE_11		      1
#define ONLY_RE_29		      2

/* Baud Rate */
#define BAUD_RATE_10K                 1
#define BAUD_RATE_20K                 2
#define BAUD_RATE_50K                 3
#define BAUD_RATE_100K                4
#define BAUD_RATE_125K                5
#define BAUD_RATE_250K                6
#define BAUD_RATE_500K                7
#define BAUD_RATE_800K                8
#define BAUD_RATE_1000K               9

/* Receive Mode */
#define EXT_ID              0x0
#define STD_ID              0x1
#define ALL_ID              0x2

#define RECV_EXT_ID_ONLY    EXT_ID
#define RECV_STD_ID_ONLY    STD_ID
#define RECV_ALL            ALL_ID


/* Error Code */
#define ERR_GPIO     (0x1 << 24)
#define ERR_WATCHDOG (0x2 << 24)
#define ERR_POWER    (0x3 << 24)
#define ERR_CANBUS   (0x4 << 24)

i32 getCanFwVer(PicInfo *ver);

i32 resetIbutt(void);
i32 readIbutt(u8 *pData);
i32 writeIbutt(u8 data);

i32 getCanBaudRate(u8 *baud);
i32 setCanBaudRate(u8 baud);

i32 getCanMessage(struct CanMsg *buf, int size);

i32 sendCanMessage( struct CanMsg *msg, u8 count );
//i32 sendCanMessage(struct CanMsg *msg);

i32 getCanMask(struct CanMask* pMask);
i32 setCanMask(struct CanMask* pMask);

i32 setCanFilter(struct CanFilter *pFilter);
i32 getCanFilter(struct CanFilter *pFilter);

//CHARLIE ADD
i32 getCanMode(u8 *mode);
i32 SetCanMode(u8 mode);

}
