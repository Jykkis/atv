#include <linux/module.h>
#include <linux/vermagic.h>
#include <linux/compiler.h>

MODULE_INFO(vermagic, VERMAGIC_STRING);

__visible struct module __this_module
__attribute__((section(".gnu.linkonce.this_module"))) = {
	.name = KBUILD_MODNAME,
	.init = init_module,
#ifdef CONFIG_MODULE_UNLOAD
	.exit = cleanup_module,
#endif
	.arch = MODULE_ARCH_INIT,
};

static const struct modversion_info ____versions[]
__used
__attribute__((section("__versions"))) = {
	{ 0x141d70f7, __VMLINUX_SYMBOL_STR(module_layout) },
	{ 0x651c85c2, __VMLINUX_SYMBOL_STR(os_if_spin_unlock) },
	{ 0x71804050, __VMLINUX_SYMBOL_STR(os_if_queue_task) },
	{ 0xfff2c2d0, __VMLINUX_SYMBOL_STR(vCanCleanup) },
	{ 0x70d738c9, __VMLINUX_SYMBOL_STR(os_if_spin_lock_irqsave) },
	{ 0x906447e8, __VMLINUX_SYMBOL_STR(queue_length) },
	{ 0x987876f9, __VMLINUX_SYMBOL_STR(pci_disable_device) },
	{ 0x91831d70, __VMLINUX_SYMBOL_STR(seq_printf) },
	{ 0xeae3dfd6, __VMLINUX_SYMBOL_STR(__const_udelay) },
	{ 0x9af79db5, __VMLINUX_SYMBOL_STR(pci_release_regions) },
	{ 0x916cebe9, __VMLINUX_SYMBOL_STR(vCanTime) },
	{ 0x91715312, __VMLINUX_SYMBOL_STR(sprintf) },
	{ 0x70c7c05f, __VMLINUX_SYMBOL_STR(os_if_spin_unlock_irqrestore) },
	{ 0xfb578fc5, __VMLINUX_SYMBOL_STR(memset) },
	{ 0xd5065308, __VMLINUX_SYMBOL_STR(queue_front) },
	{ 0xf10de535, __VMLINUX_SYMBOL_STR(ioread8) },
	{ 0x9453aeaa, __VMLINUX_SYMBOL_STR(vCanDispatchEvent) },
	{ 0x2f255b65, __VMLINUX_SYMBOL_STR(pci_iounmap) },
	{ 0x27e1a049, __VMLINUX_SYMBOL_STR(printk) },
	{ 0x449ad0a7, __VMLINUX_SYMBOL_STR(memcmp) },
	{ 0x691087f9, __VMLINUX_SYMBOL_STR(queue_wakeup_on_space) },
	{ 0x6f580dd5, __VMLINUX_SYMBOL_STR(queue_pop) },
	{ 0x235ea4c1, __VMLINUX_SYMBOL_STR(calculateCRC32) },
	{ 0x2072ee9b, __VMLINUX_SYMBOL_STR(request_threaded_irq) },
	{ 0x9501c15a, __VMLINUX_SYMBOL_STR(vCanInitData) },
	{ 0x451c7bd4, __VMLINUX_SYMBOL_STR(os_if_kernel_malloc) },
	{ 0xdb7305a1, __VMLINUX_SYMBOL_STR(__stack_chk_fail) },
	{ 0xfd06f019, __VMLINUX_SYMBOL_STR(packed_EAN_to_BCD_with_csum) },
	{ 0x727c4f3, __VMLINUX_SYMBOL_STR(iowrite8) },
	{ 0xbdfb6dbb, __VMLINUX_SYMBOL_STR(__fentry__) },
	{ 0xc963828f, __VMLINUX_SYMBOL_STR(pci_unregister_driver) },
	{ 0xcf21d241, __VMLINUX_SYMBOL_STR(__wake_up) },
	{ 0x9338dd27, __VMLINUX_SYMBOL_STR(os_if_kernel_free) },
	{ 0xfa49442f, __VMLINUX_SYMBOL_STR(os_if_set_task_uninterruptible) },
	{ 0x78125624, __VMLINUX_SYMBOL_STR(pci_request_regions) },
	{ 0x8b5363d4, __VMLINUX_SYMBOL_STR(vCanInit) },
	{ 0x334d6cc6, __VMLINUX_SYMBOL_STR(__pci_register_driver) },
	{ 0xf27d914b, __VMLINUX_SYMBOL_STR(vCanFlushSendBuffer) },
	{ 0x6e94147d, __VMLINUX_SYMBOL_STR(queue_release) },
	{ 0x371e4ec3, __VMLINUX_SYMBOL_STR(os_if_init_task) },
	{ 0x4a2261d9, __VMLINUX_SYMBOL_STR(os_if_wait_for_event_timeout_simple) },
	{ 0x5548d626, __VMLINUX_SYMBOL_STR(pci_iomap) },
	{ 0xdb5bb4d0, __VMLINUX_SYMBOL_STR(os_if_spin_lock) },
	{ 0x436c2179, __VMLINUX_SYMBOL_STR(iowrite32) },
	{ 0x5a8de508, __VMLINUX_SYMBOL_STR(pci_enable_device) },
	{ 0xd742d12f, __VMLINUX_SYMBOL_STR(os_if_spin_lock_remove) },
	{ 0xe484e35f, __VMLINUX_SYMBOL_STR(ioread32) },
	{ 0xf20dabd8, __VMLINUX_SYMBOL_STR(free_irq) },
};

static const char __module_depends[]
__used
__attribute__((section(".modinfo"))) =
"depends=kvcommon";


MODULE_INFO(srcversion, "0176C1CAF9A38315F864198");
