extern void abort(void);

extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));

void reach_error() { ((void) sizeof ((0) ? 1 : 0), __extension__ ({ if (0) ; else __assert_fail ("0", "linux-4.2-rc1.tar.xz-43_2a-drivers--media--usb--s2255--s2255drv.ko-entry_point.cil.out.c", 3, __extension__ __PRETTY_FUNCTION__); })); }
extern void abort (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
void memcpy_guard(void* p1, void* p2, unsigned long int n)
{
    if ((unsigned long)p1 + n <= (unsigned long)p2 || (unsigned long)p2 + n <= (unsigned long)p1)
        return;
    abort();
}
typedef unsigned char __u8;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef long long __s64;
typedef unsigned long long __u64;
typedef signed char s8;
typedef unsigned char u8;
typedef unsigned short u16;
typedef int s32;
typedef unsigned int u32;
typedef long long s64;
typedef unsigned long long u64;
typedef long __kernel_long_t;
typedef unsigned long __kernel_ulong_t;
typedef int __kernel_pid_t;
typedef __kernel_long_t __kernel_suseconds_t;
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef __u16 __le16;
typedef __u32 __le32;
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct module;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef unsigned short umode_t;
typedef __kernel_pid_t pid_t;
typedef __kernel_clockid_t clockid_t;
typedef _Bool bool;
typedef __kernel_uid32_t uid_t;
typedef __kernel_gid32_t gid_t;
typedef __kernel_loff_t loff_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef __kernel_time_t time_t;
typedef __s32 int32_t;
typedef __u32 uint32_t;
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
typedef u64 dma_addr_t;
typedef unsigned int gfp_t;
typedef unsigned int fmode_t;
typedef unsigned int oom_flags_t;
struct __anonstruct_atomic_t_6 {
   int counter ;
};
typedef struct __anonstruct_atomic_t_6 atomic_t;
struct __anonstruct_atomic64_t_7 {
   long counter ;
};
typedef struct __anonstruct_atomic64_t_7 atomic64_t;
struct list_head {
   struct list_head *next ;
   struct list_head *prev ;
};
struct hlist_node;
struct hlist_head {
   struct hlist_node *first ;
};
struct hlist_node {
   struct hlist_node *next ;
   struct hlist_node **pprev ;
};
struct callback_head {
   struct callback_head *next ;
   void (*func)(struct callback_head * ) ;
};
struct pt_regs {
   unsigned long r15 ;
   unsigned long r14 ;
   unsigned long r13 ;
   unsigned long r12 ;
   unsigned long bp ;
   unsigned long bx ;
   unsigned long r11 ;
   unsigned long r10 ;
   unsigned long r9 ;
   unsigned long r8 ;
   unsigned long ax ;
   unsigned long cx ;
   unsigned long dx ;
   unsigned long si ;
   unsigned long di ;
   unsigned long orig_ax ;
   unsigned long ip ;
   unsigned long cs ;
   unsigned long flags ;
   unsigned long sp ;
   unsigned long ss ;
};
struct __anonstruct____missing_field_name_9 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct____missing_field_name_10 {
   u16 limit0 ;
   u16 base0 ;
   unsigned char base1 ;
   unsigned char type : 4 ;
   unsigned char s : 1 ;
   unsigned char dpl : 2 ;
   unsigned char p : 1 ;
   unsigned char limit : 4 ;
   unsigned char avl : 1 ;
   unsigned char l : 1 ;
   unsigned char d : 1 ;
   unsigned char g : 1 ;
   unsigned char base2 ;
};
union __anonunion____missing_field_name_8 {
   struct __anonstruct____missing_field_name_9 __annonCompField4 ;
   struct __anonstruct____missing_field_name_10 __annonCompField5 ;
};
struct desc_struct {
   union __anonunion____missing_field_name_8 __annonCompField6 ;
};
typedef unsigned long pteval_t;
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct __anonstruct_pte_t_11 {
   pteval_t pte ;
};
typedef struct __anonstruct_pte_t_11 pte_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_12 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_12 pgd_t;
struct page;
typedef struct page *pgtable_t;
struct file;
struct seq_file;
struct thread_struct;
struct mm_struct;
struct task_struct;
struct cpumask;
struct qspinlock {
   atomic_t val ;
};
typedef struct qspinlock arch_spinlock_t;
struct qrwlock {
   atomic_t cnts ;
   arch_spinlock_t lock ;
};
typedef struct qrwlock arch_rwlock_t;
typedef void (*ctor_fn_t)(void);
struct _ddebug {
   char const *modname ;
   char const *function ;
   char const *filename ;
   char const *format ;
   unsigned int lineno : 18 ;
   unsigned char flags ;
};
struct device;
struct file_operations;
struct completion;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct timespec;
struct compat_timespec;
struct __anonstruct_futex_16 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_17 {
   clockid_t clockid ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_18 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion____missing_field_name_15 {
   struct __anonstruct_futex_16 futex ;
   struct __anonstruct_nanosleep_17 nanosleep ;
   struct __anonstruct_poll_18 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion____missing_field_name_15 __annonCompField7 ;
};
struct kernel_vm86_regs {
   struct pt_regs pt ;
   unsigned short es ;
   unsigned short __esh ;
   unsigned short ds ;
   unsigned short __dsh ;
   unsigned short fs ;
   unsigned short __fsh ;
   unsigned short gs ;
   unsigned short __gsh ;
};
union __anonunion____missing_field_name_19 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion____missing_field_name_19 __annonCompField8 ;
};
struct cpumask {
   unsigned long bits[128U] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
struct fregs_state {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20U] ;
   u32 status ;
};
struct __anonstruct____missing_field_name_29 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct____missing_field_name_30 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion____missing_field_name_28 {
   struct __anonstruct____missing_field_name_29 __annonCompField12 ;
   struct __anonstruct____missing_field_name_30 __annonCompField13 ;
};
union __anonunion____missing_field_name_31 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct fxregs_state {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion____missing_field_name_28 __annonCompField14 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion____missing_field_name_31 __annonCompField15 ;
};
struct swregs_state {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20U] ;
   u8 ftop ;
   u8 changed ;
   u8 lookahead ;
   u8 no_update ;
   u8 rm ;
   u8 alimit ;
   struct math_emu_info *info ;
   u32 entry_eip ;
};
struct xstate_header {
   u64 xfeatures ;
   u64 xcomp_bv ;
   u64 reserved[6U] ;
};
struct xregs_state {
   struct fxregs_state i387 ;
   struct xstate_header header ;
   u8 __reserved[464U] ;
};
union fpregs_state {
   struct fregs_state fsave ;
   struct fxregs_state fxsave ;
   struct swregs_state soft ;
   struct xregs_state xsave ;
};
struct fpu {
   union fpregs_state state ;
   unsigned int last_cpu ;
   unsigned char fpstate_active ;
   unsigned char fpregs_active ;
   unsigned char counter ;
};
struct seq_operations;
struct perf_event;
struct thread_struct {
   struct desc_struct tls_array[3U] ;
   unsigned long sp0 ;
   unsigned long sp ;
   unsigned short es ;
   unsigned short ds ;
   unsigned short fsindex ;
   unsigned short gsindex ;
   unsigned long fs ;
   unsigned long gs ;
   struct fpu fpu ;
   struct perf_event *ptrace_bps[4U] ;
   unsigned long debugreg6 ;
   unsigned long ptrace_dr7 ;
   unsigned long cr2 ;
   unsigned long trap_nr ;
   unsigned long error_code ;
   unsigned long *io_bitmap_ptr ;
   unsigned long iopl ;
   unsigned int io_bitmap_max ;
};
typedef atomic64_t atomic_long_t;
struct lockdep_map;
struct stack_trace {
   unsigned int nr_entries ;
   unsigned int max_entries ;
   unsigned long *entries ;
   int skip ;
};
struct lockdep_subclass_key {
   char __one_byte ;
};
struct lock_class_key {
   struct lockdep_subclass_key subkeys[8U] ;
};
struct lock_class {
   struct list_head hash_entry ;
   struct list_head lock_entry ;
   struct lockdep_subclass_key *key ;
   unsigned int subclass ;
   unsigned int dep_gen_id ;
   unsigned long usage_mask ;
   struct stack_trace usage_traces[13U] ;
   struct list_head locks_after ;
   struct list_head locks_before ;
   unsigned int version ;
   unsigned long ops ;
   char const *name ;
   int name_version ;
   unsigned long contention_point[4U] ;
   unsigned long contending_point[4U] ;
};
struct lockdep_map {
   struct lock_class_key *key ;
   struct lock_class *class_cache[2U] ;
   char const *name ;
   int cpu ;
   unsigned long ip ;
};
struct held_lock {
   u64 prev_chain_key ;
   unsigned long acquire_ip ;
   struct lockdep_map *instance ;
   struct lockdep_map *nest_lock ;
   u64 waittime_stamp ;
   u64 holdtime_stamp ;
   unsigned short class_idx : 13 ;
   unsigned char irq_context : 2 ;
   unsigned char trylock : 1 ;
   unsigned char read : 2 ;
   unsigned char check : 1 ;
   unsigned char hardirqs_off : 1 ;
   unsigned short references : 12 ;
   unsigned int pin_count ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct____missing_field_name_35 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion____missing_field_name_34 {
   struct raw_spinlock rlock ;
   struct __anonstruct____missing_field_name_35 __annonCompField17 ;
};
struct spinlock {
   union __anonunion____missing_field_name_34 __annonCompField18 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_36 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_36 rwlock_t;
struct seqcount {
   unsigned int sequence ;
   struct lockdep_map dep_map ;
};
typedef struct seqcount seqcount_t;
struct __anonstruct_seqlock_t_45 {
   struct seqcount seqcount ;
   spinlock_t lock ;
};
typedef struct __anonstruct_seqlock_t_45 seqlock_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct timeval {
   __kernel_time_t tv_sec ;
   __kernel_suseconds_t tv_usec ;
};
struct user_namespace;
struct __anonstruct_kuid_t_46 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_46 kuid_t;
struct __anonstruct_kgid_t_47 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_47 kgid_t;
struct kstat {
   u64 ino ;
   dev_t dev ;
   umode_t mode ;
   unsigned int nlink ;
   kuid_t uid ;
   kgid_t gid ;
   dev_t rdev ;
   loff_t size ;
   struct timespec atime ;
   struct timespec mtime ;
   struct timespec ctime ;
   unsigned long blksize ;
   unsigned long long blocks ;
};
struct vm_area_struct;
struct __wait_queue;
typedef struct __wait_queue wait_queue_t;
struct __wait_queue {
   unsigned int flags ;
   void *private ;
   int (*func)(wait_queue_t * , unsigned int , int , void * ) ;
   struct list_head task_list ;
};
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct __anonstruct_nodemask_t_48 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_48 nodemask_t;
struct optimistic_spin_queue {
   atomic_t tail ;
};
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   void *magic ;
   struct lockdep_map dep_map ;
};
struct mutex_waiter {
   struct list_head list ;
   struct task_struct *task ;
   void *magic ;
};
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   struct list_head wait_list ;
   raw_spinlock_t wait_lock ;
   struct optimistic_spin_queue osq ;
   struct task_struct *owner ;
   struct lockdep_map dep_map ;
};
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
union ktime {
   s64 tv64 ;
};
typedef union ktime ktime_t;
struct timer_list {
   struct hlist_node entry ;
   unsigned long expires ;
   void (*function)(unsigned long ) ;
   unsigned long data ;
   u32 flags ;
   int slack ;
   int start_pid ;
   void *start_site ;
   char start_comm[16U] ;
   struct lockdep_map lockdep_map ;
};
struct hrtimer;
enum hrtimer_restart;
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct nsproxy;
struct workqueue_struct;
struct work_struct;
struct work_struct {
   atomic_long_t data ;
   struct list_head entry ;
   void (*func)(struct work_struct * ) ;
   struct lockdep_map lockdep_map ;
};
struct delayed_work {
   struct work_struct work ;
   struct timer_list timer ;
   struct workqueue_struct *wq ;
   int cpu ;
};
struct pm_message {
   int event ;
};
typedef struct pm_message pm_message_t;
struct dev_pm_ops {
   int (*prepare)(struct device * ) ;
   void (*complete)(struct device * ) ;
   int (*suspend)(struct device * ) ;
   int (*resume)(struct device * ) ;
   int (*freeze)(struct device * ) ;
   int (*thaw)(struct device * ) ;
   int (*poweroff)(struct device * ) ;
   int (*restore)(struct device * ) ;
   int (*suspend_late)(struct device * ) ;
   int (*resume_early)(struct device * ) ;
   int (*freeze_late)(struct device * ) ;
   int (*thaw_early)(struct device * ) ;
   int (*poweroff_late)(struct device * ) ;
   int (*restore_early)(struct device * ) ;
   int (*suspend_noirq)(struct device * ) ;
   int (*resume_noirq)(struct device * ) ;
   int (*freeze_noirq)(struct device * ) ;
   int (*thaw_noirq)(struct device * ) ;
   int (*poweroff_noirq)(struct device * ) ;
   int (*restore_noirq)(struct device * ) ;
   int (*runtime_suspend)(struct device * ) ;
   int (*runtime_resume)(struct device * ) ;
   int (*runtime_idle)(struct device * ) ;
};
enum rpm_status {
    RPM_ACTIVE = 0,
    RPM_RESUMING = 1,
    RPM_SUSPENDED = 2,
    RPM_SUSPENDING = 3
} ;
enum rpm_request {
    RPM_REQ_NONE = 0,
    RPM_REQ_IDLE = 1,
    RPM_REQ_SUSPEND = 2,
    RPM_REQ_AUTOSUSPEND = 3,
    RPM_REQ_RESUME = 4
} ;
struct wakeup_source;
struct wake_irq;
struct pm_subsys_data {
   spinlock_t lock ;
   unsigned int refcount ;
   struct list_head clock_list ;
};
struct dev_pm_qos;
struct dev_pm_info {
   pm_message_t power_state ;
   unsigned char can_wakeup : 1 ;
   unsigned char async_suspend : 1 ;
   bool is_prepared ;
   bool is_suspended ;
   bool is_noirq_suspended ;
   bool is_late_suspended ;
   bool ignore_children ;
   bool early_init ;
   bool direct_complete ;
   spinlock_t lock ;
   struct list_head entry ;
   struct completion completion ;
   struct wakeup_source *wakeup ;
   bool wakeup_path ;
   bool syscore ;
   struct timer_list suspend_timer ;
   unsigned long timer_expires ;
   struct work_struct work ;
   wait_queue_head_t wait_queue ;
   struct wake_irq *wakeirq ;
   atomic_t usage_count ;
   atomic_t child_count ;
   unsigned char disable_depth : 3 ;
   unsigned char idle_notification : 1 ;
   unsigned char request_pending : 1 ;
   unsigned char deferred_resume : 1 ;
   unsigned char run_wake : 1 ;
   unsigned char runtime_auto : 1 ;
   unsigned char no_callbacks : 1 ;
   unsigned char irq_safe : 1 ;
   unsigned char use_autosuspend : 1 ;
   unsigned char timer_autosuspends : 1 ;
   unsigned char memalloc_noio : 1 ;
   enum rpm_request request ;
   enum rpm_status runtime_status ;
   int runtime_error ;
   int autosuspend_delay ;
   unsigned long last_busy ;
   unsigned long active_jiffies ;
   unsigned long suspended_jiffies ;
   unsigned long accounting_timestamp ;
   struct pm_subsys_data *subsys_data ;
   void (*set_latency_tolerance)(struct device * , s32 ) ;
   struct dev_pm_qos *qos ;
};
struct dev_pm_domain {
   struct dev_pm_ops ops ;
   void (*detach)(struct device * , bool ) ;
   int (*activate)(struct device * ) ;
   void (*sync)(struct device * ) ;
   void (*dismiss)(struct device * ) ;
};
struct __anonstruct_mm_context_t_115 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
   atomic_t perf_rdpmc_allowed ;
};
typedef struct __anonstruct_mm_context_t_115 mm_context_t;
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct cred;
struct inode;
struct arch_uprobe_task {
   unsigned long saved_scratch_register ;
   unsigned int saved_trap_nr ;
   unsigned int saved_tf ;
};
enum uprobe_task_state {
    UTASK_RUNNING = 0,
    UTASK_SSTEP = 1,
    UTASK_SSTEP_ACK = 2,
    UTASK_SSTEP_TRAPPED = 3
} ;
struct __anonstruct____missing_field_name_148 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_149 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_147 {
   struct __anonstruct____missing_field_name_148 __annonCompField33 ;
   struct __anonstruct____missing_field_name_149 __annonCompField34 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_147 __annonCompField35 ;
   struct uprobe *active_uprobe ;
   unsigned long xol_vaddr ;
   struct return_instance *return_instances ;
   unsigned int depth ;
};
struct xol_area;
struct uprobes_state {
   struct xol_area *xol_area ;
};
struct address_space;
struct mem_cgroup;
typedef void compound_page_dtor(struct page * );
union __anonunion____missing_field_name_150 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_152 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_156 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion____missing_field_name_155 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_156 __annonCompField38 ;
   int units ;
};
struct __anonstruct____missing_field_name_154 {
   union __anonunion____missing_field_name_155 __annonCompField39 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_153 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_154 __annonCompField40 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_151 {
   union __anonunion____missing_field_name_152 __annonCompField37 ;
   union __anonunion____missing_field_name_153 __annonCompField41 ;
};
struct __anonstruct____missing_field_name_158 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
struct __anonstruct____missing_field_name_159 {
   compound_page_dtor *compound_dtor ;
   unsigned long compound_order ;
};
union __anonunion____missing_field_name_157 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_158 __annonCompField43 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   struct __anonstruct____missing_field_name_159 __annonCompField44 ;
   pgtable_t pmd_huge_pte ;
};
struct kmem_cache;
union __anonunion____missing_field_name_160 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_150 __annonCompField36 ;
   struct __anonstruct____missing_field_name_151 __annonCompField42 ;
   union __anonunion____missing_field_name_157 __annonCompField45 ;
   union __anonunion____missing_field_name_160 __annonCompField46 ;
   struct mem_cgroup *mem_cgroup ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_shared_161 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
struct anon_vma;
struct vm_operations_struct;
struct mempolicy;
struct vm_area_struct {
   unsigned long vm_start ;
   unsigned long vm_end ;
   struct vm_area_struct *vm_next ;
   struct vm_area_struct *vm_prev ;
   struct rb_node vm_rb ;
   unsigned long rb_subtree_gap ;
   struct mm_struct *vm_mm ;
   pgprot_t vm_page_prot ;
   unsigned long vm_flags ;
   struct __anonstruct_shared_161 shared ;
   struct list_head anon_vma_chain ;
   struct anon_vma *anon_vma ;
   struct vm_operations_struct const *vm_ops ;
   unsigned long vm_pgoff ;
   struct file *vm_file ;
   void *vm_private_data ;
   struct mempolicy *vm_policy ;
};
struct core_thread {
   struct task_struct *task ;
   struct core_thread *next ;
};
struct core_state {
   atomic_t nr_threads ;
   struct core_thread dumper ;
   struct completion startup ;
};
struct task_rss_stat {
   int events ;
   int count[3U] ;
};
struct mm_rss_stat {
   atomic_long_t count[3U] ;
};
struct kioctx_table;
struct linux_binfmt;
struct mmu_notifier_mm;
struct mm_struct {
   struct vm_area_struct *mmap ;
   struct rb_root mm_rb ;
   u32 vmacache_seqnum ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   unsigned long mmap_base ;
   unsigned long mmap_legacy_base ;
   unsigned long task_size ;
   unsigned long highest_vm_end ;
   pgd_t *pgd ;
   atomic_t mm_users ;
   atomic_t mm_count ;
   atomic_long_t nr_ptes ;
   atomic_long_t nr_pmds ;
   int map_count ;
   spinlock_t page_table_lock ;
   struct rw_semaphore mmap_sem ;
   struct list_head mmlist ;
   unsigned long hiwater_rss ;
   unsigned long hiwater_vm ;
   unsigned long total_vm ;
   unsigned long locked_vm ;
   unsigned long pinned_vm ;
   unsigned long shared_vm ;
   unsigned long exec_vm ;
   unsigned long stack_vm ;
   unsigned long def_flags ;
   unsigned long start_code ;
   unsigned long end_code ;
   unsigned long start_data ;
   unsigned long end_data ;
   unsigned long start_brk ;
   unsigned long brk ;
   unsigned long start_stack ;
   unsigned long arg_start ;
   unsigned long arg_end ;
   unsigned long env_start ;
   unsigned long env_end ;
   unsigned long saved_auxv[46U] ;
   struct mm_rss_stat rss_stat ;
   struct linux_binfmt *binfmt ;
   cpumask_var_t cpu_vm_mask_var ;
   mm_context_t context ;
   unsigned long flags ;
   struct core_state *core_state ;
   spinlock_t ioctx_lock ;
   struct kioctx_table *ioctx_table ;
   struct task_struct *owner ;
   struct file *exe_file ;
   struct mmu_notifier_mm *mmu_notifier_mm ;
   struct cpumask cpumask_allocation ;
   unsigned long numa_next_scan ;
   unsigned long numa_scan_offset ;
   int numa_scan_seq ;
   bool tlb_flush_pending ;
   struct uprobes_state uprobes_state ;
   void *bd_addr ;
};
typedef __u64 Elf64_Addr;
typedef __u16 Elf64_Half;
typedef __u32 Elf64_Word;
typedef __u64 Elf64_Xword;
struct elf64_sym {
   Elf64_Word st_name ;
   unsigned char st_info ;
   unsigned char st_other ;
   Elf64_Half st_shndx ;
   Elf64_Addr st_value ;
   Elf64_Xword st_size ;
};
typedef struct elf64_sym Elf64_Sym;
union __anonunion____missing_field_name_166 {
   unsigned long bitmap[4U] ;
   struct callback_head callback_head ;
};
struct idr_layer {
   int prefix ;
   int layer ;
   struct idr_layer *ary[256U] ;
   int count ;
   union __anonunion____missing_field_name_166 __annonCompField47 ;
};
struct idr {
   struct idr_layer *hint ;
   struct idr_layer *top ;
   int layers ;
   int cur ;
   spinlock_t lock ;
   int id_free_cnt ;
   struct idr_layer *id_free ;
};
struct ida_bitmap {
   long nr_busy ;
   unsigned long bitmap[15U] ;
};
struct ida {
   struct idr idr ;
   struct ida_bitmap *free_bitmap ;
};
struct dentry;
struct iattr;
struct super_block;
struct file_system_type;
struct kernfs_open_node;
struct kernfs_iattrs;
struct kernfs_root;
struct kernfs_elem_dir {
   unsigned long subdirs ;
   struct rb_root children ;
   struct kernfs_root *root ;
};
struct kernfs_node;
struct kernfs_elem_symlink {
   struct kernfs_node *target_kn ;
};
struct kernfs_ops;
struct kernfs_elem_attr {
   struct kernfs_ops const *ops ;
   struct kernfs_open_node *open ;
   loff_t size ;
   struct kernfs_node *notify_next ;
};
union __anonunion____missing_field_name_171 {
   struct kernfs_elem_dir dir ;
   struct kernfs_elem_symlink symlink ;
   struct kernfs_elem_attr attr ;
};
struct kernfs_node {
   atomic_t count ;
   atomic_t active ;
   struct lockdep_map dep_map ;
   struct kernfs_node *parent ;
   char const *name ;
   struct rb_node rb ;
   void const *ns ;
   unsigned int hash ;
   union __anonunion____missing_field_name_171 __annonCompField48 ;
   void *priv ;
   unsigned short flags ;
   umode_t mode ;
   unsigned int ino ;
   struct kernfs_iattrs *iattr ;
};
struct kernfs_syscall_ops {
   int (*remount_fs)(struct kernfs_root * , int * , char * ) ;
   int (*show_options)(struct seq_file * , struct kernfs_root * ) ;
   int (*mkdir)(struct kernfs_node * , char const * , umode_t ) ;
   int (*rmdir)(struct kernfs_node * ) ;
   int (*rename)(struct kernfs_node * , struct kernfs_node * , char const * ) ;
};
struct kernfs_root {
   struct kernfs_node *kn ;
   unsigned int flags ;
   struct ida ino_ida ;
   struct kernfs_syscall_ops *syscall_ops ;
   struct list_head supers ;
   wait_queue_head_t deactivate_waitq ;
};
struct kernfs_open_file {
   struct kernfs_node *kn ;
   struct file *file ;
   void *priv ;
   struct mutex mutex ;
   int event ;
   struct list_head list ;
   char *prealloc_buf ;
   size_t atomic_write_len ;
   bool mmapped ;
   struct vm_operations_struct const *vm_ops ;
};
struct kernfs_ops {
   int (*seq_show)(struct seq_file * , void * ) ;
   void *(*seq_start)(struct seq_file * , loff_t * ) ;
   void *(*seq_next)(struct seq_file * , void * , loff_t * ) ;
   void (*seq_stop)(struct seq_file * , void * ) ;
   ssize_t (*read)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   size_t atomic_write_len ;
   bool prealloc ;
   ssize_t (*write)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   int (*mmap)(struct kernfs_open_file * , struct vm_area_struct * ) ;
   struct lock_class_key lockdep_key ;
};
struct sock;
struct kobject;
enum kobj_ns_type {
    KOBJ_NS_TYPE_NONE = 0,
    KOBJ_NS_TYPE_NET = 1,
    KOBJ_NS_TYPES = 2
} ;
struct kobj_ns_type_operations {
   enum kobj_ns_type type ;
   bool (*current_may_mount)(void) ;
   void *(*grab_current_ns)(void) ;
   void const *(*netlink_ns)(struct sock * ) ;
   void const *(*initial_ns)(void) ;
   void (*drop_ns)(void * ) ;
};
struct bin_attribute;
struct attribute {
   char const *name ;
   umode_t mode ;
   bool ignore_lockdep ;
   struct lock_class_key *key ;
   struct lock_class_key skey ;
};
struct attribute_group {
   char const *name ;
   umode_t (*is_visible)(struct kobject * , struct attribute * , int ) ;
   struct attribute **attrs ;
   struct bin_attribute **bin_attrs ;
};
struct bin_attribute {
   struct attribute attr ;
   size_t size ;
   void *private ;
   ssize_t (*read)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                   loff_t , size_t ) ;
   ssize_t (*write)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                    loff_t , size_t ) ;
   int (*mmap)(struct file * , struct kobject * , struct bin_attribute * , struct vm_area_struct * ) ;
};
struct sysfs_ops {
   ssize_t (*show)(struct kobject * , struct attribute * , char * ) ;
   ssize_t (*store)(struct kobject * , struct attribute * , char const * , size_t ) ;
};
struct kref {
   atomic_t refcount ;
};
struct kset;
struct kobj_type;
struct kobject {
   char const *name ;
   struct list_head entry ;
   struct kobject *parent ;
   struct kset *kset ;
   struct kobj_type *ktype ;
   struct kernfs_node *sd ;
   struct kref kref ;
   struct delayed_work release ;
   unsigned char state_initialized : 1 ;
   unsigned char state_in_sysfs : 1 ;
   unsigned char state_add_uevent_sent : 1 ;
   unsigned char state_remove_uevent_sent : 1 ;
   unsigned char uevent_suppress : 1 ;
};
struct kobj_type {
   void (*release)(struct kobject * ) ;
   struct sysfs_ops const *sysfs_ops ;
   struct attribute **default_attrs ;
   struct kobj_ns_type_operations const *(*child_ns_type)(struct kobject * ) ;
   void const *(*namespace)(struct kobject * ) ;
};
struct kobj_uevent_env {
   char *argv[3U] ;
   char *envp[32U] ;
   int envp_idx ;
   char buf[2048U] ;
   int buflen ;
};
struct kset_uevent_ops {
   int (* const filter)(struct kset * , struct kobject * ) ;
   char const *(* const name)(struct kset * , struct kobject * ) ;
   int (* const uevent)(struct kset * , struct kobject * , struct kobj_uevent_env * ) ;
};
struct kset {
   struct list_head list ;
   spinlock_t list_lock ;
   struct kobject kobj ;
   struct kset_uevent_ops const *uevent_ops ;
};
struct kernel_param;
struct kernel_param_ops {
   unsigned int flags ;
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion____missing_field_name_172 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct module *mod ;
   struct kernel_param_ops const *ops ;
   u16 const perm ;
   s8 level ;
   u8 flags ;
   union __anonunion____missing_field_name_172 __annonCompField49 ;
};
struct kparam_string {
   unsigned int maxlen ;
   char *string ;
};
struct kparam_array {
   unsigned int max ;
   unsigned int elemsize ;
   unsigned int *num ;
   struct kernel_param_ops const *ops ;
   void *elem ;
};
struct latch_tree_node {
   struct rb_node node[2U] ;
};
struct mod_arch_specific {
};
struct module_param_attrs;
struct module_kobject {
   struct kobject kobj ;
   struct module *mod ;
   struct kobject *drivers_dir ;
   struct module_param_attrs *mp ;
   struct completion *kobj_completion ;
};
struct module_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct module_attribute * , struct module_kobject * , char * ) ;
   ssize_t (*store)(struct module_attribute * , struct module_kobject * , char const * ,
                    size_t ) ;
   void (*setup)(struct module * , char const * ) ;
   int (*test)(struct module * ) ;
   void (*free)(struct module * ) ;
};
struct exception_table_entry;
enum module_state {
    MODULE_STATE_LIVE = 0,
    MODULE_STATE_COMING = 1,
    MODULE_STATE_GOING = 2,
    MODULE_STATE_UNFORMED = 3
} ;
struct mod_tree_node {
   struct module *mod ;
   struct latch_tree_node node ;
};
struct module_sect_attrs;
struct module_notes_attrs;
struct tracepoint;
struct trace_event_call;
struct trace_enum_map;
struct module {
   enum module_state state ;
   struct list_head list ;
   char name[56U] ;
   struct module_kobject mkobj ;
   struct module_attribute *modinfo_attrs ;
   char const *version ;
   char const *srcversion ;
   struct kobject *holders_dir ;
   struct kernel_symbol const *syms ;
   unsigned long const *crcs ;
   unsigned int num_syms ;
   struct mutex param_lock ;
   struct kernel_param *kp ;
   unsigned int num_kp ;
   unsigned int num_gpl_syms ;
   struct kernel_symbol const *gpl_syms ;
   unsigned long const *gpl_crcs ;
   struct kernel_symbol const *unused_syms ;
   unsigned long const *unused_crcs ;
   unsigned int num_unused_syms ;
   unsigned int num_unused_gpl_syms ;
   struct kernel_symbol const *unused_gpl_syms ;
   unsigned long const *unused_gpl_crcs ;
   bool sig_ok ;
   bool async_probe_requested ;
   struct kernel_symbol const *gpl_future_syms ;
   unsigned long const *gpl_future_crcs ;
   unsigned int num_gpl_future_syms ;
   unsigned int num_exentries ;
   struct exception_table_entry *extable ;
   int (*init)(void) ;
   void *module_init ;
   void *module_core ;
   unsigned int init_size ;
   unsigned int core_size ;
   unsigned int init_text_size ;
   unsigned int core_text_size ;
   struct mod_tree_node mtn_core ;
   struct mod_tree_node mtn_init ;
   unsigned int init_ro_size ;
   unsigned int core_ro_size ;
   struct mod_arch_specific arch ;
   unsigned int taints ;
   unsigned int num_bugs ;
   struct list_head bug_list ;
   struct bug_entry *bug_table ;
   Elf64_Sym *symtab ;
   Elf64_Sym *core_symtab ;
   unsigned int num_symtab ;
   unsigned int core_num_syms ;
   char *strtab ;
   char *core_strtab ;
   struct module_sect_attrs *sect_attrs ;
   struct module_notes_attrs *notes_attrs ;
   char *args ;
   void *percpu ;
   unsigned int percpu_size ;
   unsigned int num_tracepoints ;
   struct tracepoint * const *tracepoints_ptrs ;
   unsigned int num_trace_bprintk_fmt ;
   char const **trace_bprintk_fmt_start ;
   struct trace_event_call **trace_events ;
   unsigned int num_trace_events ;
   struct trace_enum_map **trace_enums ;
   unsigned int num_trace_enums ;
   unsigned int num_ftrace_callsites ;
   unsigned long *ftrace_callsites ;
   bool klp_alive ;
   struct list_head source_list ;
   struct list_head target_list ;
   void (*exit)(void) ;
   atomic_t refcnt ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
typedef unsigned long cputime_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct user_struct;
struct sysv_shm {
   struct list_head shm_clist ;
};
struct __anonstruct_sigset_t_180 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_180 sigset_t;
struct siginfo;
typedef void __signalfn_t(int );
typedef __signalfn_t *__sighandler_t;
typedef void __restorefn_t(void);
typedef __restorefn_t *__sigrestore_t;
union sigval {
   int sival_int ;
   void *sival_ptr ;
};
typedef union sigval sigval_t;
struct __anonstruct__kill_182 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_183 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_184 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_185 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__addr_bnd_187 {
   void *_lower ;
   void *_upper ;
};
struct __anonstruct__sigfault_186 {
   void *_addr ;
   short _addr_lsb ;
   struct __anonstruct__addr_bnd_187 _addr_bnd ;
};
struct __anonstruct__sigpoll_188 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_189 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_181 {
   int _pad[28U] ;
   struct __anonstruct__kill_182 _kill ;
   struct __anonstruct__timer_183 _timer ;
   struct __anonstruct__rt_184 _rt ;
   struct __anonstruct__sigchld_185 _sigchld ;
   struct __anonstruct__sigfault_186 _sigfault ;
   struct __anonstruct__sigpoll_188 _sigpoll ;
   struct __anonstruct__sigsys_189 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_181 _sifields ;
};
typedef struct siginfo siginfo_t;
struct sigpending {
   struct list_head list ;
   sigset_t signal ;
};
struct sigaction {
   __sighandler_t sa_handler ;
   unsigned long sa_flags ;
   __sigrestore_t sa_restorer ;
   sigset_t sa_mask ;
};
struct k_sigaction {
   struct sigaction sa ;
};
enum pid_type {
    PIDTYPE_PID = 0,
    PIDTYPE_PGID = 1,
    PIDTYPE_SID = 2,
    PIDTYPE_MAX = 3
} ;
struct pid_namespace;
struct upid {
   int nr ;
   struct pid_namespace *ns ;
   struct hlist_node pid_chain ;
};
struct pid {
   atomic_t count ;
   unsigned int level ;
   struct hlist_head tasks[3U] ;
   struct callback_head rcu ;
   struct upid numbers[1U] ;
};
struct pid_link {
   struct hlist_node node ;
   struct pid *pid ;
};
struct percpu_counter {
   raw_spinlock_t lock ;
   s64 count ;
   struct list_head list ;
   s32 *counters ;
};
struct seccomp_filter;
struct seccomp {
   int mode ;
   struct seccomp_filter *filter ;
};
struct rt_mutex_waiter;
struct rlimit {
   __kernel_ulong_t rlim_cur ;
   __kernel_ulong_t rlim_max ;
};
struct timerqueue_node {
   struct rb_node node ;
   ktime_t expires ;
};
struct timerqueue_head {
   struct rb_root head ;
   struct timerqueue_node *next ;
};
struct hrtimer_clock_base;
struct hrtimer_cpu_base;
enum hrtimer_restart {
    HRTIMER_NORESTART = 0,
    HRTIMER_RESTART = 1
} ;
struct hrtimer {
   struct timerqueue_node node ;
   ktime_t _softexpires ;
   enum hrtimer_restart (*function)(struct hrtimer * ) ;
   struct hrtimer_clock_base *base ;
   unsigned long state ;
   int start_pid ;
   void *start_site ;
   char start_comm[16U] ;
};
struct hrtimer_clock_base {
   struct hrtimer_cpu_base *cpu_base ;
   int index ;
   clockid_t clockid ;
   struct timerqueue_head active ;
   ktime_t (*get_time)(void) ;
   ktime_t offset ;
};
struct hrtimer_cpu_base {
   raw_spinlock_t lock ;
   seqcount_t seq ;
   struct hrtimer *running ;
   unsigned int cpu ;
   unsigned int active_bases ;
   unsigned int clock_was_set_seq ;
   bool migration_enabled ;
   bool nohz_active ;
   unsigned char in_hrtirq : 1 ;
   unsigned char hres_active : 1 ;
   unsigned char hang_detected : 1 ;
   ktime_t expires_next ;
   struct hrtimer *next_timer ;
   unsigned int nr_events ;
   unsigned int nr_retries ;
   unsigned int nr_hangs ;
   unsigned int max_hang_time ;
   struct hrtimer_clock_base clock_base[4U] ;
};
struct task_io_accounting {
   u64 rchar ;
   u64 wchar ;
   u64 syscr ;
   u64 syscw ;
   u64 read_bytes ;
   u64 write_bytes ;
   u64 cancelled_write_bytes ;
};
struct latency_record {
   unsigned long backtrace[12U] ;
   unsigned int count ;
   unsigned long time ;
   unsigned long max ;
};
struct assoc_array_ptr;
struct assoc_array {
   struct assoc_array_ptr *root ;
   unsigned long nr_leaves_on_tree ;
};
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct signal_struct;
struct key_type;
struct keyring_index_key {
   struct key_type *type ;
   char const *description ;
   size_t desc_len ;
};
union __anonunion____missing_field_name_196 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_197 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_199 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_198 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_199 __annonCompField52 ;
};
union __anonunion_type_data_200 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_202 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_201 {
   union __anonunion_payload_202 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_196 __annonCompField50 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_197 __annonCompField51 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_198 __annonCompField53 ;
   union __anonunion_type_data_200 type_data ;
   union __anonunion____missing_field_name_201 __annonCompField54 ;
};
struct audit_context;
struct group_info {
   atomic_t usage ;
   int ngroups ;
   int nblocks ;
   kgid_t small_block[32U] ;
   kgid_t *blocks[0U] ;
};
struct cred {
   atomic_t usage ;
   atomic_t subscribers ;
   void *put_addr ;
   unsigned int magic ;
   kuid_t uid ;
   kgid_t gid ;
   kuid_t suid ;
   kgid_t sgid ;
   kuid_t euid ;
   kgid_t egid ;
   kuid_t fsuid ;
   kgid_t fsgid ;
   unsigned int securebits ;
   kernel_cap_t cap_inheritable ;
   kernel_cap_t cap_permitted ;
   kernel_cap_t cap_effective ;
   kernel_cap_t cap_bset ;
   unsigned char jit_keyring ;
   struct key *session_keyring ;
   struct key *process_keyring ;
   struct key *thread_keyring ;
   struct key *request_key_auth ;
   void *security ;
   struct user_struct *user ;
   struct user_namespace *user_ns ;
   struct group_info *group_info ;
   struct callback_head rcu ;
};
struct percpu_ref;
typedef void percpu_ref_func_t(struct percpu_ref * );
struct percpu_ref {
   atomic_long_t count ;
   unsigned long percpu_count_ptr ;
   percpu_ref_func_t *release ;
   percpu_ref_func_t *confirm_switch ;
   bool force_atomic ;
   struct callback_head rcu ;
};
struct cgroup;
struct cgroup_root;
struct cgroup_subsys;
struct cgroup_taskset;
struct cgroup_subsys_state {
   struct cgroup *cgroup ;
   struct cgroup_subsys *ss ;
   struct percpu_ref refcnt ;
   struct cgroup_subsys_state *parent ;
   struct list_head sibling ;
   struct list_head children ;
   int id ;
   unsigned int flags ;
   u64 serial_nr ;
   struct callback_head callback_head ;
   struct work_struct destroy_work ;
};
struct css_set {
   atomic_t refcount ;
   struct hlist_node hlist ;
   struct list_head tasks ;
   struct list_head mg_tasks ;
   struct list_head cgrp_links ;
   struct cgroup *dfl_cgrp ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct list_head mg_preload_node ;
   struct list_head mg_node ;
   struct cgroup *mg_src_cgrp ;
   struct css_set *mg_dst_cset ;
   struct list_head e_cset_node[12U] ;
   struct callback_head callback_head ;
};
struct cgroup {
   struct cgroup_subsys_state self ;
   unsigned long flags ;
   int id ;
   int populated_cnt ;
   struct kernfs_node *kn ;
   struct kernfs_node *procs_kn ;
   struct kernfs_node *populated_kn ;
   unsigned int subtree_control ;
   unsigned int child_subsys_mask ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct cgroup_root *root ;
   struct list_head cset_links ;
   struct list_head e_csets[12U] ;
   struct list_head pidlists ;
   struct mutex pidlist_mutex ;
   wait_queue_head_t offline_waitq ;
   struct work_struct release_agent_work ;
};
struct cgroup_root {
   struct kernfs_root *kf_root ;
   unsigned int subsys_mask ;
   int hierarchy_id ;
   struct cgroup cgrp ;
   atomic_t nr_cgrps ;
   struct list_head root_list ;
   unsigned int flags ;
   struct idr cgroup_idr ;
   char release_agent_path[4096U] ;
   char name[64U] ;
};
struct cftype {
   char name[64U] ;
   int private ;
   umode_t mode ;
   size_t max_write_len ;
   unsigned int flags ;
   struct cgroup_subsys *ss ;
   struct list_head node ;
   struct kernfs_ops *kf_ops ;
   u64 (*read_u64)(struct cgroup_subsys_state * , struct cftype * ) ;
   s64 (*read_s64)(struct cgroup_subsys_state * , struct cftype * ) ;
   int (*seq_show)(struct seq_file * , void * ) ;
   void *(*seq_start)(struct seq_file * , loff_t * ) ;
   void *(*seq_next)(struct seq_file * , void * , loff_t * ) ;
   void (*seq_stop)(struct seq_file * , void * ) ;
   int (*write_u64)(struct cgroup_subsys_state * , struct cftype * , u64 ) ;
   int (*write_s64)(struct cgroup_subsys_state * , struct cftype * , s64 ) ;
   ssize_t (*write)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   struct lock_class_key lockdep_key ;
};
struct cgroup_subsys {
   struct cgroup_subsys_state *(*css_alloc)(struct cgroup_subsys_state * ) ;
   int (*css_online)(struct cgroup_subsys_state * ) ;
   void (*css_offline)(struct cgroup_subsys_state * ) ;
   void (*css_released)(struct cgroup_subsys_state * ) ;
   void (*css_free)(struct cgroup_subsys_state * ) ;
   void (*css_reset)(struct cgroup_subsys_state * ) ;
   void (*css_e_css_changed)(struct cgroup_subsys_state * ) ;
   int (*can_attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*cancel_attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*fork)(struct task_struct * ) ;
   void (*exit)(struct cgroup_subsys_state * , struct cgroup_subsys_state * , struct task_struct * ) ;
   void (*bind)(struct cgroup_subsys_state * ) ;
   int disabled ;
   int early_init ;
   bool broken_hierarchy ;
   bool warned_broken_hierarchy ;
   int id ;
   char const *name ;
   struct cgroup_root *root ;
   struct idr css_idr ;
   struct list_head cfts ;
   struct cftype *dfl_cftypes ;
   struct cftype *legacy_cftypes ;
   unsigned int depends_on ;
};
struct futex_pi_state;
struct robust_list_head;
struct bio_list;
struct fs_struct;
struct perf_event_context;
struct blk_plug;
struct nameidata;
struct cfs_rq;
struct task_group;
struct sighand_struct {
   atomic_t count ;
   struct k_sigaction action[64U] ;
   spinlock_t siglock ;
   wait_queue_head_t signalfd_wqh ;
};
struct pacct_struct {
   int ac_flag ;
   long ac_exitcode ;
   unsigned long ac_mem ;
   cputime_t ac_utime ;
   cputime_t ac_stime ;
   unsigned long ac_minflt ;
   unsigned long ac_majflt ;
};
struct cpu_itimer {
   cputime_t expires ;
   cputime_t incr ;
   u32 error ;
   u32 incr_error ;
};
struct cputime {
   cputime_t utime ;
   cputime_t stime ;
};
struct task_cputime {
   cputime_t utime ;
   cputime_t stime ;
   unsigned long long sum_exec_runtime ;
};
struct task_cputime_atomic {
   atomic64_t utime ;
   atomic64_t stime ;
   atomic64_t sum_exec_runtime ;
};
struct thread_group_cputimer {
   struct task_cputime_atomic cputime_atomic ;
   int running ;
};
struct autogroup;
struct tty_struct;
struct taskstats;
struct tty_audit_buf;
struct signal_struct {
   atomic_t sigcnt ;
   atomic_t live ;
   int nr_threads ;
   struct list_head thread_head ;
   wait_queue_head_t wait_chldexit ;
   struct task_struct *curr_target ;
   struct sigpending shared_pending ;
   int group_exit_code ;
   int notify_count ;
   struct task_struct *group_exit_task ;
   int group_stop_count ;
   unsigned int flags ;
   unsigned char is_child_subreaper : 1 ;
   unsigned char has_child_subreaper : 1 ;
   int posix_timer_id ;
   struct list_head posix_timers ;
   struct hrtimer real_timer ;
   struct pid *leader_pid ;
   ktime_t it_real_incr ;
   struct cpu_itimer it[2U] ;
   struct thread_group_cputimer cputimer ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3U] ;
   struct pid *tty_old_pgrp ;
   int leader ;
   struct tty_struct *tty ;
   struct autogroup *autogroup ;
   seqlock_t stats_lock ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t cutime ;
   cputime_t cstime ;
   cputime_t gtime ;
   cputime_t cgtime ;
   struct cputime prev_cputime ;
   unsigned long nvcsw ;
   unsigned long nivcsw ;
   unsigned long cnvcsw ;
   unsigned long cnivcsw ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   unsigned long cmin_flt ;
   unsigned long cmaj_flt ;
   unsigned long inblock ;
   unsigned long oublock ;
   unsigned long cinblock ;
   unsigned long coublock ;
   unsigned long maxrss ;
   unsigned long cmaxrss ;
   struct task_io_accounting ioac ;
   unsigned long long sum_sched_runtime ;
   struct rlimit rlim[16U] ;
   struct pacct_struct pacct ;
   struct taskstats *stats ;
   unsigned int audit_tty ;
   unsigned int audit_tty_log_passwd ;
   struct tty_audit_buf *tty_audit_buf ;
   oom_flags_t oom_flags ;
   short oom_score_adj ;
   short oom_score_adj_min ;
   struct mutex cred_guard_mutex ;
};
struct user_struct {
   atomic_t __count ;
   atomic_t processes ;
   atomic_t sigpending ;
   atomic_t inotify_watches ;
   atomic_t inotify_devs ;
   atomic_t fanotify_listeners ;
   atomic_long_t epoll_watches ;
   unsigned long mq_bytes ;
   unsigned long locked_shm ;
   struct key *uid_keyring ;
   struct key *session_keyring ;
   struct hlist_node uidhash_node ;
   kuid_t uid ;
   atomic_long_t locked_vm ;
};
struct backing_dev_info;
struct reclaim_state;
struct sched_info {
   unsigned long pcount ;
   unsigned long long run_delay ;
   unsigned long long last_arrival ;
   unsigned long long last_queued ;
};
struct task_delay_info {
   spinlock_t lock ;
   unsigned int flags ;
   u64 blkio_start ;
   u64 blkio_delay ;
   u64 swapin_delay ;
   u32 blkio_count ;
   u32 swapin_count ;
   u64 freepages_start ;
   u64 freepages_delay ;
   u32 freepages_count ;
};
struct wake_q_node {
   struct wake_q_node *next ;
};
struct io_context;
struct pipe_inode_info;
struct load_weight {
   unsigned long weight ;
   u32 inv_weight ;
};
struct sched_avg {
   u64 last_runnable_update ;
   s64 decay_count ;
   unsigned long load_avg_contrib ;
   unsigned long utilization_avg_contrib ;
   u32 runnable_avg_sum ;
   u32 avg_period ;
   u32 running_avg_sum ;
};
struct sched_statistics {
   u64 wait_start ;
   u64 wait_max ;
   u64 wait_count ;
   u64 wait_sum ;
   u64 iowait_count ;
   u64 iowait_sum ;
   u64 sleep_start ;
   u64 sleep_max ;
   s64 sum_sleep_runtime ;
   u64 block_start ;
   u64 block_max ;
   u64 exec_max ;
   u64 slice_max ;
   u64 nr_migrations_cold ;
   u64 nr_failed_migrations_affine ;
   u64 nr_failed_migrations_running ;
   u64 nr_failed_migrations_hot ;
   u64 nr_forced_migrations ;
   u64 nr_wakeups ;
   u64 nr_wakeups_sync ;
   u64 nr_wakeups_migrate ;
   u64 nr_wakeups_local ;
   u64 nr_wakeups_remote ;
   u64 nr_wakeups_affine ;
   u64 nr_wakeups_affine_attempts ;
   u64 nr_wakeups_passive ;
   u64 nr_wakeups_idle ;
};
struct sched_entity {
   struct load_weight load ;
   struct rb_node run_node ;
   struct list_head group_node ;
   unsigned int on_rq ;
   u64 exec_start ;
   u64 sum_exec_runtime ;
   u64 vruntime ;
   u64 prev_sum_exec_runtime ;
   u64 nr_migrations ;
   struct sched_statistics statistics ;
   int depth ;
   struct sched_entity *parent ;
   struct cfs_rq *cfs_rq ;
   struct cfs_rq *my_q ;
   struct sched_avg avg ;
};
struct rt_rq;
struct sched_rt_entity {
   struct list_head run_list ;
   unsigned long timeout ;
   unsigned long watchdog_stamp ;
   unsigned int time_slice ;
   struct sched_rt_entity *back ;
   struct sched_rt_entity *parent ;
   struct rt_rq *rt_rq ;
   struct rt_rq *my_q ;
};
struct sched_dl_entity {
   struct rb_node rb_node ;
   u64 dl_runtime ;
   u64 dl_deadline ;
   u64 dl_period ;
   u64 dl_bw ;
   s64 runtime ;
   u64 deadline ;
   unsigned int flags ;
   int dl_throttled ;
   int dl_new ;
   int dl_boosted ;
   int dl_yielded ;
   struct hrtimer dl_timer ;
};
struct memcg_oom_info {
   struct mem_cgroup *memcg ;
   gfp_t gfp_mask ;
   int order ;
   unsigned char may_oom : 1 ;
};
struct sched_class;
struct files_struct;
struct compat_robust_list_head;
struct numa_group;
struct ftrace_ret_stack;
struct task_struct {
   long volatile state ;
   void *stack ;
   atomic_t usage ;
   unsigned int flags ;
   unsigned int ptrace ;
   struct llist_node wake_entry ;
   int on_cpu ;
   struct task_struct *last_wakee ;
   unsigned long wakee_flips ;
   unsigned long wakee_flip_decay_ts ;
   int wake_cpu ;
   int on_rq ;
   int prio ;
   int static_prio ;
   int normal_prio ;
   unsigned int rt_priority ;
   struct sched_class const *sched_class ;
   struct sched_entity se ;
   struct sched_rt_entity rt ;
   struct task_group *sched_task_group ;
   struct sched_dl_entity dl ;
   struct hlist_head preempt_notifiers ;
   unsigned int btrace_seq ;
   unsigned int policy ;
   int nr_cpus_allowed ;
   cpumask_t cpus_allowed ;
   unsigned long rcu_tasks_nvcsw ;
   bool rcu_tasks_holdout ;
   struct list_head rcu_tasks_holdout_list ;
   int rcu_tasks_idle_cpu ;
   struct sched_info sched_info ;
   struct list_head tasks ;
   struct plist_node pushable_tasks ;
   struct rb_node pushable_dl_tasks ;
   struct mm_struct *mm ;
   struct mm_struct *active_mm ;
   u32 vmacache_seqnum ;
   struct vm_area_struct *vmacache[4U] ;
   struct task_rss_stat rss_stat ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned long jobctl ;
   unsigned int personality ;
   unsigned char in_execve : 1 ;
   unsigned char in_iowait : 1 ;
   unsigned char sched_reset_on_fork : 1 ;
   unsigned char sched_contributes_to_load : 1 ;
   unsigned char sched_migrated : 1 ;
   unsigned char memcg_kmem_skip_account : 1 ;
   unsigned char brk_randomized : 1 ;
   unsigned long atomic_flags ;
   struct restart_block restart_block ;
   pid_t pid ;
   pid_t tgid ;
   struct task_struct *real_parent ;
   struct task_struct *parent ;
   struct list_head children ;
   struct list_head sibling ;
   struct task_struct *group_leader ;
   struct list_head ptraced ;
   struct list_head ptrace_entry ;
   struct pid_link pids[3U] ;
   struct list_head thread_group ;
   struct list_head thread_node ;
   struct completion *vfork_done ;
   int *set_child_tid ;
   int *clear_child_tid ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t utimescaled ;
   cputime_t stimescaled ;
   cputime_t gtime ;
   struct cputime prev_cputime ;
   unsigned long nvcsw ;
   unsigned long nivcsw ;
   u64 start_time ;
   u64 real_start_time ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3U] ;
   struct cred const *real_cred ;
   struct cred const *cred ;
   char comm[16U] ;
   struct nameidata *nameidata ;
   struct sysv_sem sysvsem ;
   struct sysv_shm sysvshm ;
   unsigned long last_switch_count ;
   struct thread_struct thread ;
   struct fs_struct *fs ;
   struct files_struct *files ;
   struct nsproxy *nsproxy ;
   struct signal_struct *signal ;
   struct sighand_struct *sighand ;
   sigset_t blocked ;
   sigset_t real_blocked ;
   sigset_t saved_sigmask ;
   struct sigpending pending ;
   unsigned long sas_ss_sp ;
   size_t sas_ss_size ;
   int (*notifier)(void * ) ;
   void *notifier_data ;
   sigset_t *notifier_mask ;
   struct callback_head *task_works ;
   struct audit_context *audit_context ;
   kuid_t loginuid ;
   unsigned int sessionid ;
   struct seccomp seccomp ;
   u32 parent_exec_id ;
   u32 self_exec_id ;
   spinlock_t alloc_lock ;
   raw_spinlock_t pi_lock ;
   struct wake_q_node wake_q ;
   struct rb_root pi_waiters ;
   struct rb_node *pi_waiters_leftmost ;
   struct rt_mutex_waiter *pi_blocked_on ;
   struct mutex_waiter *blocked_on ;
   unsigned int irq_events ;
   unsigned long hardirq_enable_ip ;
   unsigned long hardirq_disable_ip ;
   unsigned int hardirq_enable_event ;
   unsigned int hardirq_disable_event ;
   int hardirqs_enabled ;
   int hardirq_context ;
   unsigned long softirq_disable_ip ;
   unsigned long softirq_enable_ip ;
   unsigned int softirq_disable_event ;
   unsigned int softirq_enable_event ;
   int softirqs_enabled ;
   int softirq_context ;
   u64 curr_chain_key ;
   int lockdep_depth ;
   unsigned int lockdep_recursion ;
   struct held_lock held_locks[48U] ;
   gfp_t lockdep_reclaim_gfp ;
   void *journal_info ;
   struct bio_list *bio_list ;
   struct blk_plug *plug ;
   struct reclaim_state *reclaim_state ;
   struct backing_dev_info *backing_dev_info ;
   struct io_context *io_context ;
   unsigned long ptrace_message ;
   siginfo_t *last_siginfo ;
   struct task_io_accounting ioac ;
   u64 acct_rss_mem1 ;
   u64 acct_vm_mem1 ;
   cputime_t acct_timexpd ;
   nodemask_t mems_allowed ;
   seqcount_t mems_allowed_seq ;
   int cpuset_mem_spread_rotor ;
   int cpuset_slab_spread_rotor ;
   struct css_set *cgroups ;
   struct list_head cg_list ;
   struct robust_list_head *robust_list ;
   struct compat_robust_list_head *compat_robust_list ;
   struct list_head pi_state_list ;
   struct futex_pi_state *pi_state_cache ;
   struct perf_event_context *perf_event_ctxp[2U] ;
   struct mutex perf_event_mutex ;
   struct list_head perf_event_list ;
   struct mempolicy *mempolicy ;
   short il_next ;
   short pref_node_fork ;
   int numa_scan_seq ;
   unsigned int numa_scan_period ;
   unsigned int numa_scan_period_max ;
   int numa_preferred_nid ;
   unsigned long numa_migrate_retry ;
   u64 node_stamp ;
   u64 last_task_numa_placement ;
   u64 last_sum_exec_runtime ;
   struct callback_head numa_work ;
   struct list_head numa_entry ;
   struct numa_group *numa_group ;
   unsigned long *numa_faults ;
   unsigned long total_numa_faults ;
   unsigned long numa_faults_locality[3U] ;
   unsigned long numa_pages_migrated ;
   struct callback_head rcu ;
   struct pipe_inode_info *splice_pipe ;
   struct page_frag task_frag ;
   struct task_delay_info *delays ;
   int make_it_fail ;
   int nr_dirtied ;
   int nr_dirtied_pause ;
   unsigned long dirty_paused_when ;
   int latency_record_count ;
   struct latency_record latency_record[32U] ;
   unsigned long timer_slack_ns ;
   unsigned long default_timer_slack_ns ;
   unsigned int kasan_depth ;
   int curr_ret_stack ;
   struct ftrace_ret_stack *ret_stack ;
   unsigned long long ftrace_timestamp ;
   atomic_t trace_overrun ;
   atomic_t tracing_graph_pause ;
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_oom_info memcg_oom ;
   struct uprobe_task *utask ;
   unsigned int sequential_io ;
   unsigned int sequential_io_avg ;
   unsigned long task_state_change ;
   int pagefault_disabled ;
};
struct usb_interface;
struct v4l2_streamparm;
struct v4l2_fh;
struct vb2_buffer;
struct vb2_queue;
struct v4l2_buffer;
struct v4l2_format;
struct v4l2_event_subscription;
struct firmware {
   size_t size ;
   u8 const *data ;
   struct page **pages ;
   void *priv ;
};
struct v4l2_edid {
   __u32 pad ;
   __u32 start_block ;
   __u32 blocks ;
   __u32 reserved[5U] ;
   __u8 *edid ;
};
enum v4l2_field {
    V4L2_FIELD_ANY = 0,
    V4L2_FIELD_NONE = 1,
    V4L2_FIELD_TOP = 2,
    V4L2_FIELD_BOTTOM = 3,
    V4L2_FIELD_INTERLACED = 4,
    V4L2_FIELD_SEQ_TB = 5,
    V4L2_FIELD_SEQ_BT = 6,
    V4L2_FIELD_ALTERNATE = 7,
    V4L2_FIELD_INTERLACED_TB = 8,
    V4L2_FIELD_INTERLACED_BT = 9
} ;
enum v4l2_buf_type {
    V4L2_BUF_TYPE_VIDEO_CAPTURE = 1,
    V4L2_BUF_TYPE_VIDEO_OUTPUT = 2,
    V4L2_BUF_TYPE_VIDEO_OVERLAY = 3,
    V4L2_BUF_TYPE_VBI_CAPTURE = 4,
    V4L2_BUF_TYPE_VBI_OUTPUT = 5,
    V4L2_BUF_TYPE_SLICED_VBI_CAPTURE = 6,
    V4L2_BUF_TYPE_SLICED_VBI_OUTPUT = 7,
    V4L2_BUF_TYPE_VIDEO_OUTPUT_OVERLAY = 8,
    V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = 9,
    V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = 10,
    V4L2_BUF_TYPE_SDR_CAPTURE = 11,
    V4L2_BUF_TYPE_PRIVATE = 128
} ;
enum v4l2_memory {
    V4L2_MEMORY_MMAP = 1,
    V4L2_MEMORY_USERPTR = 2,
    V4L2_MEMORY_OVERLAY = 3,
    V4L2_MEMORY_DMABUF = 4
} ;
enum v4l2_priority {
    V4L2_PRIORITY_UNSET = 0,
    V4L2_PRIORITY_BACKGROUND = 1,
    V4L2_PRIORITY_INTERACTIVE = 2,
    V4L2_PRIORITY_RECORD = 3,
    V4L2_PRIORITY_DEFAULT = 2
} ;
struct v4l2_rect {
   __s32 left ;
   __s32 top ;
   __u32 width ;
   __u32 height ;
};
struct v4l2_fract {
   __u32 numerator ;
   __u32 denominator ;
};
struct v4l2_capability {
   __u8 driver[16U] ;
   __u8 card[32U] ;
   __u8 bus_info[32U] ;
   __u32 version ;
   __u32 capabilities ;
   __u32 device_caps ;
   __u32 reserved[3U] ;
};
struct v4l2_pix_format {
   __u32 width ;
   __u32 height ;
   __u32 pixelformat ;
   __u32 field ;
   __u32 bytesperline ;
   __u32 sizeimage ;
   __u32 colorspace ;
   __u32 priv ;
   __u32 flags ;
   __u32 ycbcr_enc ;
   __u32 quantization ;
   __u32 xfer_func ;
};
struct v4l2_fmtdesc {
   __u32 index ;
   __u32 type ;
   __u32 flags ;
   __u8 description[32U] ;
   __u32 pixelformat ;
   __u32 reserved[4U] ;
};
struct v4l2_frmsize_discrete {
   __u32 width ;
   __u32 height ;
};
struct v4l2_frmsize_stepwise {
   __u32 min_width ;
   __u32 max_width ;
   __u32 step_width ;
   __u32 min_height ;
   __u32 max_height ;
   __u32 step_height ;
};
union __anonunion____missing_field_name_217 {
   struct v4l2_frmsize_discrete discrete ;
   struct v4l2_frmsize_stepwise stepwise ;
};
struct v4l2_frmsizeenum {
   __u32 index ;
   __u32 pixel_format ;
   __u32 type ;
   union __anonunion____missing_field_name_217 __annonCompField58 ;
   __u32 reserved[2U] ;
};
struct v4l2_frmival_stepwise {
   struct v4l2_fract min ;
   struct v4l2_fract max ;
   struct v4l2_fract step ;
};
union __anonunion____missing_field_name_218 {
   struct v4l2_fract discrete ;
   struct v4l2_frmival_stepwise stepwise ;
};
struct v4l2_frmivalenum {
   __u32 index ;
   __u32 pixel_format ;
   __u32 width ;
   __u32 height ;
   __u32 type ;
   union __anonunion____missing_field_name_218 __annonCompField59 ;
   __u32 reserved[2U] ;
};
struct v4l2_timecode {
   __u32 type ;
   __u32 flags ;
   __u8 frames ;
   __u8 seconds ;
   __u8 minutes ;
   __u8 hours ;
   __u8 userbits[4U] ;
};
struct v4l2_jpegcompression {
   int quality ;
   int APPn ;
   int APP_len ;
   char APP_data[60U] ;
   int COM_len ;
   char COM_data[60U] ;
   __u32 jpeg_markers ;
};
struct v4l2_requestbuffers {
   __u32 count ;
   __u32 type ;
   __u32 memory ;
   __u32 reserved[2U] ;
};
union __anonunion_m_219 {
   __u32 mem_offset ;
   unsigned long userptr ;
   __s32 fd ;
};
struct v4l2_plane {
   __u32 bytesused ;
   __u32 length ;
   union __anonunion_m_219 m ;
   __u32 data_offset ;
   __u32 reserved[11U] ;
};
union __anonunion_m_220 {
   __u32 offset ;
   unsigned long userptr ;
   struct v4l2_plane *planes ;
   __s32 fd ;
};
struct v4l2_buffer {
   __u32 index ;
   __u32 type ;
   __u32 bytesused ;
   __u32 flags ;
   __u32 field ;
   struct timeval timestamp ;
   struct v4l2_timecode timecode ;
   __u32 sequence ;
   __u32 memory ;
   union __anonunion_m_220 m ;
   __u32 length ;
   __u32 reserved2 ;
   __u32 reserved ;
};
struct v4l2_exportbuffer {
   __u32 type ;
   __u32 index ;
   __u32 plane ;
   __u32 flags ;
   __s32 fd ;
   __u32 reserved[11U] ;
};
struct __anonstruct_fmt_221 {
   __u32 width ;
   __u32 height ;
   __u32 pixelformat ;
   __u32 field ;
   __u32 bytesperline ;
   __u32 sizeimage ;
   __u32 colorspace ;
   __u32 priv ;
};
struct v4l2_framebuffer {
   __u32 capability ;
   __u32 flags ;
   void *base ;
   struct __anonstruct_fmt_221 fmt ;
};
struct v4l2_clip {
   struct v4l2_rect c ;
   struct v4l2_clip *next ;
};
struct v4l2_window {
   struct v4l2_rect w ;
   __u32 field ;
   __u32 chromakey ;
   struct v4l2_clip *clips ;
   __u32 clipcount ;
   void *bitmap ;
   __u8 global_alpha ;
};
struct v4l2_captureparm {
   __u32 capability ;
   __u32 capturemode ;
   struct v4l2_fract timeperframe ;
   __u32 extendedmode ;
   __u32 readbuffers ;
   __u32 reserved[4U] ;
};
struct v4l2_outputparm {
   __u32 capability ;
   __u32 outputmode ;
   struct v4l2_fract timeperframe ;
   __u32 extendedmode ;
   __u32 writebuffers ;
   __u32 reserved[4U] ;
};
struct v4l2_cropcap {
   __u32 type ;
   struct v4l2_rect bounds ;
   struct v4l2_rect defrect ;
   struct v4l2_fract pixelaspect ;
};
struct v4l2_crop {
   __u32 type ;
   struct v4l2_rect c ;
};
struct v4l2_selection {
   __u32 type ;
   __u32 target ;
   __u32 flags ;
   struct v4l2_rect r ;
   __u32 reserved[9U] ;
};
typedef __u64 v4l2_std_id;
struct v4l2_bt_timings {
   __u32 width ;
   __u32 height ;
   __u32 interlaced ;
   __u32 polarities ;
   __u64 pixelclock ;
   __u32 hfrontporch ;
   __u32 hsync ;
   __u32 hbackporch ;
   __u32 vfrontporch ;
   __u32 vsync ;
   __u32 vbackporch ;
   __u32 il_vfrontporch ;
   __u32 il_vsync ;
   __u32 il_vbackporch ;
   __u32 standards ;
   __u32 flags ;
   __u32 reserved[14U] ;
};
union __anonunion____missing_field_name_222 {
   struct v4l2_bt_timings bt ;
   __u32 reserved[32U] ;
};
struct v4l2_dv_timings {
   __u32 type ;
   union __anonunion____missing_field_name_222 __annonCompField60 ;
};
struct v4l2_enum_dv_timings {
   __u32 index ;
   __u32 pad ;
   __u32 reserved[2U] ;
   struct v4l2_dv_timings timings ;
};
struct v4l2_bt_timings_cap {
   __u32 min_width ;
   __u32 max_width ;
   __u32 min_height ;
   __u32 max_height ;
   __u64 min_pixelclock ;
   __u64 max_pixelclock ;
   __u32 standards ;
   __u32 capabilities ;
   __u32 reserved[16U] ;
};
union __anonunion____missing_field_name_223 {
   struct v4l2_bt_timings_cap bt ;
   __u32 raw_data[32U] ;
};
struct v4l2_dv_timings_cap {
   __u32 type ;
   __u32 pad ;
   __u32 reserved[2U] ;
   union __anonunion____missing_field_name_223 __annonCompField61 ;
};
struct v4l2_input {
   __u32 index ;
   __u8 name[32U] ;
   __u32 type ;
   __u32 audioset ;
   __u32 tuner ;
   v4l2_std_id std ;
   __u32 status ;
   __u32 capabilities ;
   __u32 reserved[3U] ;
};
struct v4l2_output {
   __u32 index ;
   __u8 name[32U] ;
   __u32 type ;
   __u32 audioset ;
   __u32 modulator ;
   v4l2_std_id std ;
   __u32 capabilities ;
   __u32 reserved[3U] ;
};
struct v4l2_control {
   __u32 id ;
   __s32 value ;
};
union __anonunion____missing_field_name_224 {
   __s32 value ;
   __s64 value64 ;
   char *string ;
   __u8 *p_u8 ;
   __u16 *p_u16 ;
   __u32 *p_u32 ;
   void *ptr ;
};
struct v4l2_ext_control {
   __u32 id ;
   __u32 size ;
   __u32 reserved2[1U] ;
   union __anonunion____missing_field_name_224 __annonCompField62 ;
};
struct v4l2_ext_controls {
   __u32 ctrl_class ;
   __u32 count ;
   __u32 error_idx ;
   __u32 reserved[2U] ;
   struct v4l2_ext_control *controls ;
};
enum v4l2_ctrl_type {
    V4L2_CTRL_TYPE_INTEGER = 1,
    V4L2_CTRL_TYPE_BOOLEAN = 2,
    V4L2_CTRL_TYPE_MENU = 3,
    V4L2_CTRL_TYPE_BUTTON = 4,
    V4L2_CTRL_TYPE_INTEGER64 = 5,
    V4L2_CTRL_TYPE_CTRL_CLASS = 6,
    V4L2_CTRL_TYPE_STRING = 7,
    V4L2_CTRL_TYPE_BITMASK = 8,
    V4L2_CTRL_TYPE_INTEGER_MENU = 9,
    V4L2_CTRL_COMPOUND_TYPES = 256,
    V4L2_CTRL_TYPE_U8 = 256,
    V4L2_CTRL_TYPE_U16 = 257,
    V4L2_CTRL_TYPE_U32 = 258
} ;
struct v4l2_queryctrl {
   __u32 id ;
   __u32 type ;
   __u8 name[32U] ;
   __s32 minimum ;
   __s32 maximum ;
   __s32 step ;
   __s32 default_value ;
   __u32 flags ;
   __u32 reserved[2U] ;
};
struct v4l2_query_ext_ctrl {
   __u32 id ;
   __u32 type ;
   char name[32U] ;
   __s64 minimum ;
   __s64 maximum ;
   __u64 step ;
   __s64 default_value ;
   __u32 flags ;
   __u32 elem_size ;
   __u32 elems ;
   __u32 nr_of_dims ;
   __u32 dims[4U] ;
   __u32 reserved[32U] ;
};
union __anonunion____missing_field_name_225 {
   __u8 name[32U] ;
   __s64 value ;
};
struct v4l2_querymenu {
   __u32 id ;
   __u32 index ;
   union __anonunion____missing_field_name_225 __annonCompField63 ;
   __u32 reserved ;
};
struct v4l2_tuner {
   __u32 index ;
   __u8 name[32U] ;
   __u32 type ;
   __u32 capability ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 rxsubchans ;
   __u32 audmode ;
   __s32 signal ;
   __s32 afc ;
   __u32 reserved[4U] ;
};
struct v4l2_modulator {
   __u32 index ;
   __u8 name[32U] ;
   __u32 capability ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 txsubchans ;
   __u32 reserved[4U] ;
};
struct v4l2_frequency {
   __u32 tuner ;
   __u32 type ;
   __u32 frequency ;
   __u32 reserved[8U] ;
};
struct v4l2_frequency_band {
   __u32 tuner ;
   __u32 type ;
   __u32 index ;
   __u32 capability ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 modulation ;
   __u32 reserved[9U] ;
};
struct v4l2_hw_freq_seek {
   __u32 tuner ;
   __u32 type ;
   __u32 seek_upward ;
   __u32 wrap_around ;
   __u32 spacing ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 reserved[5U] ;
};
struct v4l2_audio {
   __u32 index ;
   __u8 name[32U] ;
   __u32 capability ;
   __u32 mode ;
   __u32 reserved[2U] ;
};
struct v4l2_audioout {
   __u32 index ;
   __u8 name[32U] ;
   __u32 capability ;
   __u32 mode ;
   __u32 reserved[2U] ;
};
struct v4l2_enc_idx_entry {
   __u64 offset ;
   __u64 pts ;
   __u32 length ;
   __u32 flags ;
   __u32 reserved[2U] ;
};
struct v4l2_enc_idx {
   __u32 entries ;
   __u32 entries_cap ;
   __u32 reserved[4U] ;
   struct v4l2_enc_idx_entry entry[64U] ;
};
struct __anonstruct_raw_227 {
   __u32 data[8U] ;
};
union __anonunion____missing_field_name_226 {
   struct __anonstruct_raw_227 raw ;
};
struct v4l2_encoder_cmd {
   __u32 cmd ;
   __u32 flags ;
   union __anonunion____missing_field_name_226 __annonCompField64 ;
};
struct __anonstruct_stop_229 {
   __u64 pts ;
};
struct __anonstruct_start_230 {
   __s32 speed ;
   __u32 format ;
};
struct __anonstruct_raw_231 {
   __u32 data[16U] ;
};
union __anonunion____missing_field_name_228 {
   struct __anonstruct_stop_229 stop ;
   struct __anonstruct_start_230 start ;
   struct __anonstruct_raw_231 raw ;
};
struct v4l2_decoder_cmd {
   __u32 cmd ;
   __u32 flags ;
   union __anonunion____missing_field_name_228 __annonCompField65 ;
};
struct v4l2_vbi_format {
   __u32 sampling_rate ;
   __u32 offset ;
   __u32 samples_per_line ;
   __u32 sample_format ;
   __s32 start[2U] ;
   __u32 count[2U] ;
   __u32 flags ;
   __u32 reserved[2U] ;
};
struct v4l2_sliced_vbi_format {
   __u16 service_set ;
   __u16 service_lines[2U][24U] ;
   __u32 io_size ;
   __u32 reserved[2U] ;
};
struct v4l2_sliced_vbi_cap {
   __u16 service_set ;
   __u16 service_lines[2U][24U] ;
   __u32 type ;
   __u32 reserved[3U] ;
};
struct v4l2_sliced_vbi_data {
   __u32 id ;
   __u32 field ;
   __u32 line ;
   __u32 reserved ;
   __u8 data[48U] ;
};
struct v4l2_plane_pix_format {
   __u32 sizeimage ;
   __u32 bytesperline ;
   __u16 reserved[6U] ;
};
struct v4l2_pix_format_mplane {
   __u32 width ;
   __u32 height ;
   __u32 pixelformat ;
   __u32 field ;
   __u32 colorspace ;
   struct v4l2_plane_pix_format plane_fmt[8U] ;
   __u8 num_planes ;
   __u8 flags ;
   __u8 ycbcr_enc ;
   __u8 quantization ;
   __u8 xfer_func ;
   __u8 reserved[7U] ;
};
struct v4l2_sdr_format {
   __u32 pixelformat ;
   __u32 buffersize ;
   __u8 reserved[24U] ;
};
union __anonunion_fmt_233 {
   struct v4l2_pix_format pix ;
   struct v4l2_pix_format_mplane pix_mp ;
   struct v4l2_window win ;
   struct v4l2_vbi_format vbi ;
   struct v4l2_sliced_vbi_format sliced ;
   struct v4l2_sdr_format sdr ;
   __u8 raw_data[200U] ;
};
struct v4l2_format {
   __u32 type ;
   union __anonunion_fmt_233 fmt ;
};
union __anonunion_parm_234 {
   struct v4l2_captureparm capture ;
   struct v4l2_outputparm output ;
   __u8 raw_data[200U] ;
};
struct v4l2_streamparm {
   __u32 type ;
   union __anonunion_parm_234 parm ;
};
struct v4l2_event_subscription {
   __u32 type ;
   __u32 id ;
   __u32 flags ;
   __u32 reserved[5U] ;
};
union __anonunion____missing_field_name_237 {
   __u32 addr ;
   char name[32U] ;
};
struct v4l2_dbg_match {
   __u32 type ;
   union __anonunion____missing_field_name_237 __annonCompField68 ;
};
struct v4l2_dbg_register {
   struct v4l2_dbg_match match ;
   __u32 size ;
   __u64 reg ;
   __u64 val ;
};
struct v4l2_dbg_chip_info {
   struct v4l2_dbg_match match ;
   char name[32U] ;
   __u32 flags ;
   __u32 reserved[32U] ;
};
struct v4l2_create_buffers {
   __u32 index ;
   __u32 count ;
   __u32 memory ;
   struct v4l2_format format ;
   __u32 reserved[8U] ;
};
struct shrink_control {
   gfp_t gfp_mask ;
   unsigned long nr_to_scan ;
   int nid ;
   struct mem_cgroup *memcg ;
};
struct shrinker {
   unsigned long (*count_objects)(struct shrinker * , struct shrink_control * ) ;
   unsigned long (*scan_objects)(struct shrinker * , struct shrink_control * ) ;
   int seeks ;
   long batch ;
   unsigned long flags ;
   struct list_head list ;
   atomic_long_t *nr_deferred ;
};
struct file_ra_state;
struct writeback_control;
struct bdi_writeback;
struct vm_fault {
   unsigned int flags ;
   unsigned long pgoff ;
   void *virtual_address ;
   struct page *cow_page ;
   struct page *page ;
   unsigned long max_pgoff ;
   pte_t *pte ;
};
struct vm_operations_struct {
   void (*open)(struct vm_area_struct * ) ;
   void (*close)(struct vm_area_struct * ) ;
   int (*fault)(struct vm_area_struct * , struct vm_fault * ) ;
   void (*map_pages)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*page_mkwrite)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*pfn_mkwrite)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*access)(struct vm_area_struct * , unsigned long , void * , int , int ) ;
   char const *(*name)(struct vm_area_struct * ) ;
   int (*set_policy)(struct vm_area_struct * , struct mempolicy * ) ;
   struct mempolicy *(*get_policy)(struct vm_area_struct * , unsigned long ) ;
   struct page *(*find_special_page)(struct vm_area_struct * , unsigned long ) ;
};
typedef unsigned long kernel_ulong_t;
struct usb_device_id {
   __u16 match_flags ;
   __u16 idVendor ;
   __u16 idProduct ;
   __u16 bcdDevice_lo ;
   __u16 bcdDevice_hi ;
   __u8 bDeviceClass ;
   __u8 bDeviceSubClass ;
   __u8 bDeviceProtocol ;
   __u8 bInterfaceClass ;
   __u8 bInterfaceSubClass ;
   __u8 bInterfaceProtocol ;
   __u8 bInterfaceNumber ;
   kernel_ulong_t driver_info ;
};
struct acpi_device_id {
   __u8 id[9U] ;
   kernel_ulong_t driver_data ;
};
struct of_device_id {
   char name[32U] ;
   char type[32U] ;
   char compatible[128U] ;
   void const *data ;
};
struct usb_device_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 bcdUSB ;
   __u8 bDeviceClass ;
   __u8 bDeviceSubClass ;
   __u8 bDeviceProtocol ;
   __u8 bMaxPacketSize0 ;
   __le16 idVendor ;
   __le16 idProduct ;
   __le16 bcdDevice ;
   __u8 iManufacturer ;
   __u8 iProduct ;
   __u8 iSerialNumber ;
   __u8 bNumConfigurations ;
};
struct usb_config_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 wTotalLength ;
   __u8 bNumInterfaces ;
   __u8 bConfigurationValue ;
   __u8 iConfiguration ;
   __u8 bmAttributes ;
   __u8 bMaxPower ;
};
struct usb_interface_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bInterfaceNumber ;
   __u8 bAlternateSetting ;
   __u8 bNumEndpoints ;
   __u8 bInterfaceClass ;
   __u8 bInterfaceSubClass ;
   __u8 bInterfaceProtocol ;
   __u8 iInterface ;
};
struct usb_endpoint_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bEndpointAddress ;
   __u8 bmAttributes ;
   __le16 wMaxPacketSize ;
   __u8 bInterval ;
   __u8 bRefresh ;
   __u8 bSynchAddress ;
};
struct usb_ss_ep_comp_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bMaxBurst ;
   __u8 bmAttributes ;
   __le16 wBytesPerInterval ;
};
struct usb_interface_assoc_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bFirstInterface ;
   __u8 bInterfaceCount ;
   __u8 bFunctionClass ;
   __u8 bFunctionSubClass ;
   __u8 bFunctionProtocol ;
   __u8 iFunction ;
};
struct usb_bos_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 wTotalLength ;
   __u8 bNumDeviceCaps ;
};
struct usb_ext_cap_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __le32 bmAttributes ;
};
struct usb_ss_cap_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __u8 bmAttributes ;
   __le16 wSpeedSupported ;
   __u8 bFunctionalitySupport ;
   __u8 bU1devExitLat ;
   __le16 bU2DevExitLat ;
};
struct usb_ss_container_id_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __u8 bReserved ;
   __u8 ContainerID[16U] ;
};
enum usb_device_speed {
    USB_SPEED_UNKNOWN = 0,
    USB_SPEED_LOW = 1,
    USB_SPEED_FULL = 2,
    USB_SPEED_HIGH = 3,
    USB_SPEED_WIRELESS = 4,
    USB_SPEED_SUPER = 5
} ;
enum usb_device_state {
    USB_STATE_NOTATTACHED = 0,
    USB_STATE_ATTACHED = 1,
    USB_STATE_POWERED = 2,
    USB_STATE_RECONNECTING = 3,
    USB_STATE_UNAUTHENTICATED = 4,
    USB_STATE_DEFAULT = 5,
    USB_STATE_ADDRESS = 6,
    USB_STATE_CONFIGURED = 7,
    USB_STATE_SUSPENDED = 8
} ;
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct path;
struct seq_file {
   char *buf ;
   size_t size ;
   size_t from ;
   size_t count ;
   size_t pad_until ;
   loff_t index ;
   loff_t read_pos ;
   u64 version ;
   struct mutex lock ;
   struct seq_operations const *op ;
   int poll_event ;
   struct user_namespace *user_ns ;
   void *private ;
};
struct seq_operations {
   void *(*start)(struct seq_file * , loff_t * ) ;
   void (*stop)(struct seq_file * , void * ) ;
   void *(*next)(struct seq_file * , void * , loff_t * ) ;
   int (*show)(struct seq_file * , void * ) ;
};
struct pinctrl;
struct pinctrl_state;
struct dev_pin_info {
   struct pinctrl *p ;
   struct pinctrl_state *default_state ;
   struct pinctrl_state *sleep_state ;
   struct pinctrl_state *idle_state ;
};
struct dma_map_ops;
struct dev_archdata {
   struct dma_map_ops *dma_ops ;
   void *iommu ;
};
struct device_private;
struct device_driver;
struct driver_private;
struct class;
struct subsys_private;
struct bus_type;
struct device_node;
struct fwnode_handle;
struct iommu_ops;
struct iommu_group;
struct device_attribute;
struct bus_type {
   char const *name ;
   char const *dev_name ;
   struct device *dev_root ;
   struct device_attribute *dev_attrs ;
   struct attribute_group const **bus_groups ;
   struct attribute_group const **dev_groups ;
   struct attribute_group const **drv_groups ;
   int (*match)(struct device * , struct device_driver * ) ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*online)(struct device * ) ;
   int (*offline)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct iommu_ops const *iommu_ops ;
   struct subsys_private *p ;
   struct lock_class_key lock_key ;
};
struct device_type;
enum probe_type {
    PROBE_DEFAULT_STRATEGY = 0,
    PROBE_PREFER_ASYNCHRONOUS = 1,
    PROBE_FORCE_SYNCHRONOUS = 2
} ;
struct device_driver {
   char const *name ;
   struct bus_type *bus ;
   struct module *owner ;
   char const *mod_name ;
   bool suppress_bind_attrs ;
   enum probe_type probe_type ;
   struct of_device_id const *of_match_table ;
   struct acpi_device_id const *acpi_match_table ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct attribute_group const **groups ;
   struct dev_pm_ops const *pm ;
   struct driver_private *p ;
};
struct class_attribute;
struct class {
   char const *name ;
   struct module *owner ;
   struct class_attribute *class_attrs ;
   struct attribute_group const **dev_groups ;
   struct kobject *dev_kobj ;
   int (*dev_uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * ) ;
   void (*class_release)(struct class * ) ;
   void (*dev_release)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct kobj_ns_type_operations const *ns_type ;
   void const *(*namespace)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct subsys_private *p ;
};
struct class_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct class * , struct class_attribute * , char * ) ;
   ssize_t (*store)(struct class * , struct class_attribute * , char const * , size_t ) ;
};
struct device_type {
   char const *name ;
   struct attribute_group const **groups ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * , kuid_t * , kgid_t * ) ;
   void (*release)(struct device * ) ;
   struct dev_pm_ops const *pm ;
};
struct device_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device * , struct device_attribute * , char * ) ;
   ssize_t (*store)(struct device * , struct device_attribute * , char const * ,
                    size_t ) ;
};
struct device_dma_parameters {
   unsigned int max_segment_size ;
   unsigned long segment_boundary_mask ;
};
struct dma_coherent_mem;
struct cma;
struct device {
   struct device *parent ;
   struct device_private *p ;
   struct kobject kobj ;
   char const *init_name ;
   struct device_type const *type ;
   struct mutex mutex ;
   struct bus_type *bus ;
   struct device_driver *driver ;
   void *platform_data ;
   void *driver_data ;
   struct dev_pm_info power ;
   struct dev_pm_domain *pm_domain ;
   struct dev_pin_info *pins ;
   int numa_node ;
   u64 *dma_mask ;
   u64 coherent_dma_mask ;
   unsigned long dma_pfn_offset ;
   struct device_dma_parameters *dma_parms ;
   struct list_head dma_pools ;
   struct dma_coherent_mem *dma_mem ;
   struct cma *cma_area ;
   struct dev_archdata archdata ;
   struct device_node *of_node ;
   struct fwnode_handle *fwnode ;
   dev_t devt ;
   u32 id ;
   spinlock_t devres_lock ;
   struct list_head devres_head ;
   struct klist_node knode_class ;
   struct class *class ;
   struct attribute_group const **groups ;
   void (*release)(struct device * ) ;
   struct iommu_group *iommu_group ;
   bool offline_disabled ;
   bool offline ;
};
struct wakeup_source {
   char const *name ;
   struct list_head entry ;
   spinlock_t lock ;
   struct wake_irq *wakeirq ;
   struct timer_list timer ;
   unsigned long timer_expires ;
   ktime_t total_time ;
   ktime_t max_time ;
   ktime_t last_time ;
   ktime_t start_prevent_time ;
   ktime_t prevent_sleep_time ;
   unsigned long event_count ;
   unsigned long active_count ;
   unsigned long relax_count ;
   unsigned long expire_count ;
   unsigned long wakeup_count ;
   bool active ;
   bool autosleep_enabled ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_252 {
   spinlock_t lock ;
   int count ;
};
union __anonunion____missing_field_name_251 {
   struct __anonstruct____missing_field_name_252 __annonCompField76 ;
};
struct lockref {
   union __anonunion____missing_field_name_251 __annonCompField77 ;
};
struct vfsmount;
struct __anonstruct____missing_field_name_254 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_253 {
   struct __anonstruct____missing_field_name_254 __annonCompField78 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_253 __annonCompField79 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_255 {
   struct hlist_node d_alias ;
   struct callback_head d_rcu ;
};
struct dentry {
   unsigned int d_flags ;
   seqcount_t d_seq ;
   struct hlist_bl_node d_hash ;
   struct dentry *d_parent ;
   struct qstr d_name ;
   struct inode *d_inode ;
   unsigned char d_iname[32U] ;
   struct lockref d_lockref ;
   struct dentry_operations const *d_op ;
   struct super_block *d_sb ;
   unsigned long d_time ;
   void *d_fsdata ;
   struct list_head d_lru ;
   struct list_head d_child ;
   struct list_head d_subdirs ;
   union __anonunion_d_u_255 d_u ;
};
struct dentry_operations {
   int (*d_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_weak_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_hash)(struct dentry const * , struct qstr * ) ;
   int (*d_compare)(struct dentry const * , struct dentry const * , unsigned int ,
                    char const * , struct qstr const * ) ;
   int (*d_delete)(struct dentry const * ) ;
   void (*d_release)(struct dentry * ) ;
   void (*d_prune)(struct dentry * ) ;
   void (*d_iput)(struct dentry * , struct inode * ) ;
   char *(*d_dname)(struct dentry * , char * , int ) ;
   struct vfsmount *(*d_automount)(struct path * ) ;
   int (*d_manage)(struct dentry * , bool ) ;
   struct inode *(*d_select_inode)(struct dentry * , unsigned int ) ;
};
struct path {
   struct vfsmount *mnt ;
   struct dentry *dentry ;
};
struct list_lru_one {
   struct list_head list ;
   long nr_items ;
};
struct list_lru_memcg {
   struct list_lru_one *lru[0U] ;
};
struct list_lru_node {
   spinlock_t lock ;
   struct list_lru_one lru ;
   struct list_lru_memcg *memcg_lrus ;
};
struct list_lru {
   struct list_lru_node *node ;
   struct list_head list ;
};
struct __anonstruct____missing_field_name_259 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion____missing_field_name_258 {
   struct __anonstruct____missing_field_name_259 __annonCompField80 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion____missing_field_name_258 __annonCompField81 ;
   struct list_head private_list ;
   void *slots[64U] ;
   unsigned long tags[3U][1U] ;
};
struct radix_tree_root {
   unsigned int height ;
   gfp_t gfp_mask ;
   struct radix_tree_node *rnode ;
};
struct fiemap_extent {
   __u64 fe_logical ;
   __u64 fe_physical ;
   __u64 fe_length ;
   __u64 fe_reserved64[2U] ;
   __u32 fe_flags ;
   __u32 fe_reserved[3U] ;
};
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct block_device;
struct export_operations;
struct kiocb;
struct poll_table_struct;
struct kstatfs;
struct swap_info_struct;
struct iov_iter;
struct iattr {
   unsigned int ia_valid ;
   umode_t ia_mode ;
   kuid_t ia_uid ;
   kgid_t ia_gid ;
   loff_t ia_size ;
   struct timespec ia_atime ;
   struct timespec ia_mtime ;
   struct timespec ia_ctime ;
   struct file *ia_file ;
};
struct dquot;
typedef __kernel_uid32_t projid_t;
struct __anonstruct_kprojid_t_263 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_263 kprojid_t;
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion____missing_field_name_264 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_264 __annonCompField83 ;
   enum quota_type type ;
};
struct mem_dqblk {
   qsize_t dqb_bhardlimit ;
   qsize_t dqb_bsoftlimit ;
   qsize_t dqb_curspace ;
   qsize_t dqb_rsvspace ;
   qsize_t dqb_ihardlimit ;
   qsize_t dqb_isoftlimit ;
   qsize_t dqb_curinodes ;
   time_t dqb_btime ;
   time_t dqb_itime ;
};
struct quota_format_type;
struct mem_dqinfo {
   struct quota_format_type *dqi_format ;
   int dqi_fmt_id ;
   struct list_head dqi_dirty_list ;
   unsigned long dqi_flags ;
   unsigned int dqi_bgrace ;
   unsigned int dqi_igrace ;
   qsize_t dqi_max_spc_limit ;
   qsize_t dqi_max_ino_limit ;
   void *dqi_priv ;
};
struct dquot {
   struct hlist_node dq_hash ;
   struct list_head dq_inuse ;
   struct list_head dq_free ;
   struct list_head dq_dirty ;
   struct mutex dq_lock ;
   atomic_t dq_count ;
   wait_queue_head_t dq_wait_unused ;
   struct super_block *dq_sb ;
   struct kqid dq_id ;
   loff_t dq_off ;
   unsigned long dq_flags ;
   struct mem_dqblk dq_dqb ;
};
struct quota_format_ops {
   int (*check_quota_file)(struct super_block * , int ) ;
   int (*read_file_info)(struct super_block * , int ) ;
   int (*write_file_info)(struct super_block * , int ) ;
   int (*free_file_info)(struct super_block * , int ) ;
   int (*read_dqblk)(struct dquot * ) ;
   int (*commit_dqblk)(struct dquot * ) ;
   int (*release_dqblk)(struct dquot * ) ;
};
struct dquot_operations {
   int (*write_dquot)(struct dquot * ) ;
   struct dquot *(*alloc_dquot)(struct super_block * , int ) ;
   void (*destroy_dquot)(struct dquot * ) ;
   int (*acquire_dquot)(struct dquot * ) ;
   int (*release_dquot)(struct dquot * ) ;
   int (*mark_dirty)(struct dquot * ) ;
   int (*write_info)(struct super_block * , int ) ;
   qsize_t *(*get_reserved_space)(struct inode * ) ;
   int (*get_projid)(struct inode * , kprojid_t * ) ;
};
struct qc_dqblk {
   int d_fieldmask ;
   u64 d_spc_hardlimit ;
   u64 d_spc_softlimit ;
   u64 d_ino_hardlimit ;
   u64 d_ino_softlimit ;
   u64 d_space ;
   u64 d_ino_count ;
   s64 d_ino_timer ;
   s64 d_spc_timer ;
   int d_ino_warns ;
   int d_spc_warns ;
   u64 d_rt_spc_hardlimit ;
   u64 d_rt_spc_softlimit ;
   u64 d_rt_space ;
   s64 d_rt_spc_timer ;
   int d_rt_spc_warns ;
};
struct qc_type_state {
   unsigned int flags ;
   unsigned int spc_timelimit ;
   unsigned int ino_timelimit ;
   unsigned int rt_spc_timelimit ;
   unsigned int spc_warnlimit ;
   unsigned int ino_warnlimit ;
   unsigned int rt_spc_warnlimit ;
   unsigned long long ino ;
   blkcnt_t blocks ;
   blkcnt_t nextents ;
};
struct qc_state {
   unsigned int s_incoredqs ;
   struct qc_type_state s_state[3U] ;
};
struct qc_info {
   int i_fieldmask ;
   unsigned int i_flags ;
   unsigned int i_spc_timelimit ;
   unsigned int i_ino_timelimit ;
   unsigned int i_rt_spc_timelimit ;
   unsigned int i_spc_warnlimit ;
   unsigned int i_ino_warnlimit ;
   unsigned int i_rt_spc_warnlimit ;
};
struct quotactl_ops {
   int (*quota_on)(struct super_block * , int , int , struct path * ) ;
   int (*quota_off)(struct super_block * , int ) ;
   int (*quota_enable)(struct super_block * , unsigned int ) ;
   int (*quota_disable)(struct super_block * , unsigned int ) ;
   int (*quota_sync)(struct super_block * , int ) ;
   int (*set_info)(struct super_block * , int , struct qc_info * ) ;
   int (*get_dqblk)(struct super_block * , struct kqid , struct qc_dqblk * ) ;
   int (*set_dqblk)(struct super_block * , struct kqid , struct qc_dqblk * ) ;
   int (*get_state)(struct super_block * , struct qc_state * ) ;
   int (*rm_xquota)(struct super_block * , unsigned int ) ;
};
struct quota_format_type {
   int qf_fmt_id ;
   struct quota_format_ops const *qf_ops ;
   struct module *qf_owner ;
   struct quota_format_type *qf_next ;
};
struct quota_info {
   unsigned int flags ;
   struct mutex dqio_mutex ;
   struct mutex dqonoff_mutex ;
   struct inode *files[3U] ;
   struct mem_dqinfo info[3U] ;
   struct quota_format_ops const *ops[3U] ;
};
struct kiocb {
   struct file *ki_filp ;
   loff_t ki_pos ;
   void (*ki_complete)(struct kiocb * , long , long ) ;
   void *private ;
   int ki_flags ;
};
struct address_space_operations {
   int (*writepage)(struct page * , struct writeback_control * ) ;
   int (*readpage)(struct file * , struct page * ) ;
   int (*writepages)(struct address_space * , struct writeback_control * ) ;
   int (*set_page_dirty)(struct page * ) ;
   int (*readpages)(struct file * , struct address_space * , struct list_head * ,
                    unsigned int ) ;
   int (*write_begin)(struct file * , struct address_space * , loff_t , unsigned int ,
                      unsigned int , struct page ** , void ** ) ;
   int (*write_end)(struct file * , struct address_space * , loff_t , unsigned int ,
                    unsigned int , struct page * , void * ) ;
   sector_t (*bmap)(struct address_space * , sector_t ) ;
   void (*invalidatepage)(struct page * , unsigned int , unsigned int ) ;
   int (*releasepage)(struct page * , gfp_t ) ;
   void (*freepage)(struct page * ) ;
   ssize_t (*direct_IO)(struct kiocb * , struct iov_iter * , loff_t ) ;
   int (*migratepage)(struct address_space * , struct page * , struct page * , enum migrate_mode ) ;
   int (*launder_page)(struct page * ) ;
   int (*is_partially_uptodate)(struct page * , unsigned long , unsigned long ) ;
   void (*is_dirty_writeback)(struct page * , bool * , bool * ) ;
   int (*error_remove_page)(struct address_space * , struct page * ) ;
   int (*swap_activate)(struct swap_info_struct * , struct file * , sector_t * ) ;
   void (*swap_deactivate)(struct file * ) ;
};
struct address_space {
   struct inode *host ;
   struct radix_tree_root page_tree ;
   spinlock_t tree_lock ;
   atomic_t i_mmap_writable ;
   struct rb_root i_mmap ;
   struct rw_semaphore i_mmap_rwsem ;
   unsigned long nrpages ;
   unsigned long nrshadows ;
   unsigned long writeback_index ;
   struct address_space_operations const *a_ops ;
   unsigned long flags ;
   spinlock_t private_lock ;
   struct list_head private_list ;
   void *private_data ;
};
struct request_queue;
struct hd_struct;
struct gendisk;
struct block_device {
   dev_t bd_dev ;
   int bd_openers ;
   struct inode *bd_inode ;
   struct super_block *bd_super ;
   struct mutex bd_mutex ;
   struct list_head bd_inodes ;
   void *bd_claiming ;
   void *bd_holder ;
   int bd_holders ;
   bool bd_write_holder ;
   struct list_head bd_holder_disks ;
   struct block_device *bd_contains ;
   unsigned int bd_block_size ;
   struct hd_struct *bd_part ;
   unsigned int bd_part_count ;
   int bd_invalidated ;
   struct gendisk *bd_disk ;
   struct request_queue *bd_queue ;
   struct list_head bd_list ;
   unsigned long bd_private ;
   int bd_fsfreeze_count ;
   struct mutex bd_fsfreeze_mutex ;
};
struct posix_acl;
struct inode_operations;
union __anonunion____missing_field_name_267 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_268 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock_context;
struct cdev;
union __anonunion____missing_field_name_269 {
   struct pipe_inode_info *i_pipe ;
   struct block_device *i_bdev ;
   struct cdev *i_cdev ;
   char *i_link ;
};
struct inode {
   umode_t i_mode ;
   unsigned short i_opflags ;
   kuid_t i_uid ;
   kgid_t i_gid ;
   unsigned int i_flags ;
   struct posix_acl *i_acl ;
   struct posix_acl *i_default_acl ;
   struct inode_operations const *i_op ;
   struct super_block *i_sb ;
   struct address_space *i_mapping ;
   void *i_security ;
   unsigned long i_ino ;
   union __anonunion____missing_field_name_267 __annonCompField84 ;
   dev_t i_rdev ;
   loff_t i_size ;
   struct timespec i_atime ;
   struct timespec i_mtime ;
   struct timespec i_ctime ;
   spinlock_t i_lock ;
   unsigned short i_bytes ;
   unsigned int i_blkbits ;
   blkcnt_t i_blocks ;
   unsigned long i_state ;
   struct mutex i_mutex ;
   unsigned long dirtied_when ;
   unsigned long dirtied_time_when ;
   struct hlist_node i_hash ;
   struct list_head i_wb_list ;
   struct bdi_writeback *i_wb ;
   int i_wb_frn_winner ;
   u16 i_wb_frn_avg_time ;
   u16 i_wb_frn_history ;
   struct list_head i_lru ;
   struct list_head i_sb_list ;
   union __anonunion____missing_field_name_268 __annonCompField85 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock_context *i_flctx ;
   struct address_space i_data ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_269 __annonCompField86 ;
   __u32 i_generation ;
   __u32 i_fsnotify_mask ;
   struct hlist_head i_fsnotify_marks ;
   void *i_private ;
};
struct fown_struct {
   rwlock_t lock ;
   struct pid *pid ;
   enum pid_type pid_type ;
   kuid_t uid ;
   kuid_t euid ;
   int signum ;
};
struct file_ra_state {
   unsigned long start ;
   unsigned int size ;
   unsigned int async_size ;
   unsigned int ra_pages ;
   unsigned int mmap_miss ;
   loff_t prev_pos ;
};
union __anonunion_f_u_270 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_270 f_u ;
   struct path f_path ;
   struct inode *f_inode ;
   struct file_operations const *f_op ;
   spinlock_t f_lock ;
   atomic_long_t f_count ;
   unsigned int f_flags ;
   fmode_t f_mode ;
   struct mutex f_pos_lock ;
   loff_t f_pos ;
   struct fown_struct f_owner ;
   struct cred const *f_cred ;
   struct file_ra_state f_ra ;
   u64 f_version ;
   void *f_security ;
   void *private_data ;
   struct list_head f_ep_links ;
   struct list_head f_tfile_llink ;
   struct address_space *f_mapping ;
};
typedef void *fl_owner_t;
struct file_lock;
struct file_lock_operations {
   void (*fl_copy_lock)(struct file_lock * , struct file_lock * ) ;
   void (*fl_release_private)(struct file_lock * ) ;
};
struct lock_manager_operations {
   int (*lm_compare_owner)(struct file_lock * , struct file_lock * ) ;
   unsigned long (*lm_owner_key)(struct file_lock * ) ;
   fl_owner_t (*lm_get_owner)(fl_owner_t ) ;
   void (*lm_put_owner)(fl_owner_t ) ;
   void (*lm_notify)(struct file_lock * ) ;
   int (*lm_grant)(struct file_lock * , int ) ;
   bool (*lm_break)(struct file_lock * ) ;
   int (*lm_change)(struct file_lock * , int , struct list_head * ) ;
   void (*lm_setup)(struct file_lock * , void ** ) ;
};
struct nlm_lockowner;
struct nfs_lock_info {
   u32 state ;
   struct nlm_lockowner *owner ;
   struct list_head list ;
};
struct nfs4_lock_state;
struct nfs4_lock_info {
   struct nfs4_lock_state *owner ;
};
struct fasync_struct;
struct __anonstruct_afs_272 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_271 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_272 afs ;
};
struct file_lock {
   struct file_lock *fl_next ;
   struct list_head fl_list ;
   struct hlist_node fl_link ;
   struct list_head fl_block ;
   fl_owner_t fl_owner ;
   unsigned int fl_flags ;
   unsigned char fl_type ;
   unsigned int fl_pid ;
   int fl_link_cpu ;
   struct pid *fl_nspid ;
   wait_queue_head_t fl_wait ;
   struct file *fl_file ;
   loff_t fl_start ;
   loff_t fl_end ;
   struct fasync_struct *fl_fasync ;
   unsigned long fl_break_time ;
   unsigned long fl_downgrade_time ;
   struct file_lock_operations const *fl_ops ;
   struct lock_manager_operations const *fl_lmops ;
   union __anonunion_fl_u_271 fl_u ;
};
struct file_lock_context {
   spinlock_t flc_lock ;
   struct list_head flc_flock ;
   struct list_head flc_posix ;
   struct list_head flc_lease ;
};
struct fasync_struct {
   spinlock_t fa_lock ;
   int magic ;
   int fa_fd ;
   struct fasync_struct *fa_next ;
   struct file *fa_file ;
   struct callback_head fa_rcu ;
};
struct sb_writers {
   struct percpu_counter counter[3U] ;
   wait_queue_head_t wait ;
   int frozen ;
   wait_queue_head_t wait_unfrozen ;
   struct lockdep_map lock_map[3U] ;
};
struct super_operations;
struct xattr_handler;
struct mtd_info;
struct super_block {
   struct list_head s_list ;
   dev_t s_dev ;
   unsigned char s_blocksize_bits ;
   unsigned long s_blocksize ;
   loff_t s_maxbytes ;
   struct file_system_type *s_type ;
   struct super_operations const *s_op ;
   struct dquot_operations const *dq_op ;
   struct quotactl_ops const *s_qcop ;
   struct export_operations const *s_export_op ;
   unsigned long s_flags ;
   unsigned long s_iflags ;
   unsigned long s_magic ;
   struct dentry *s_root ;
   struct rw_semaphore s_umount ;
   int s_count ;
   atomic_t s_active ;
   void *s_security ;
   struct xattr_handler const **s_xattr ;
   struct list_head s_inodes ;
   struct hlist_bl_head s_anon ;
   struct list_head s_mounts ;
   struct block_device *s_bdev ;
   struct backing_dev_info *s_bdi ;
   struct mtd_info *s_mtd ;
   struct hlist_node s_instances ;
   unsigned int s_quota_types ;
   struct quota_info s_dquot ;
   struct sb_writers s_writers ;
   char s_id[32U] ;
   u8 s_uuid[16U] ;
   void *s_fs_info ;
   unsigned int s_max_links ;
   fmode_t s_mode ;
   u32 s_time_gran ;
   struct mutex s_vfs_rename_mutex ;
   char *s_subtype ;
   char *s_options ;
   struct dentry_operations const *s_d_op ;
   int cleancache_poolid ;
   struct shrinker s_shrink ;
   atomic_long_t s_remove_count ;
   int s_readonly_remount ;
   struct workqueue_struct *s_dio_done_wq ;
   struct hlist_head s_pins ;
   struct list_lru s_dentry_lru ;
   struct list_lru s_inode_lru ;
   struct callback_head rcu ;
   int s_stack_depth ;
};
struct fiemap_extent_info {
   unsigned int fi_flags ;
   unsigned int fi_extents_mapped ;
   unsigned int fi_extents_max ;
   struct fiemap_extent *fi_extents_start ;
};
struct dir_context;
struct dir_context {
   int (*actor)(struct dir_context * , char const * , int , loff_t , u64 , unsigned int ) ;
   loff_t pos ;
};
struct file_operations {
   struct module *owner ;
   loff_t (*llseek)(struct file * , loff_t , int ) ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   ssize_t (*read_iter)(struct kiocb * , struct iov_iter * ) ;
   ssize_t (*write_iter)(struct kiocb * , struct iov_iter * ) ;
   int (*iterate)(struct file * , struct dir_context * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   int (*mremap)(struct file * , struct vm_area_struct * ) ;
   int (*open)(struct inode * , struct file * ) ;
   int (*flush)(struct file * , fl_owner_t ) ;
   int (*release)(struct inode * , struct file * ) ;
   int (*fsync)(struct file * , loff_t , loff_t , int ) ;
   int (*aio_fsync)(struct kiocb * , int ) ;
   int (*fasync)(int , struct file * , int ) ;
   int (*lock)(struct file * , int , struct file_lock * ) ;
   ssize_t (*sendpage)(struct file * , struct page * , int , size_t , loff_t * ,
                       int ) ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   int (*check_flags)(int ) ;
   int (*flock)(struct file * , int , struct file_lock * ) ;
   ssize_t (*splice_write)(struct pipe_inode_info * , struct file * , loff_t * , size_t ,
                           unsigned int ) ;
   ssize_t (*splice_read)(struct file * , loff_t * , struct pipe_inode_info * , size_t ,
                          unsigned int ) ;
   int (*setlease)(struct file * , long , struct file_lock ** , void ** ) ;
   long (*fallocate)(struct file * , int , loff_t , loff_t ) ;
   void (*show_fdinfo)(struct seq_file * , struct file * ) ;
};
struct inode_operations {
   struct dentry *(*lookup)(struct inode * , struct dentry * , unsigned int ) ;
   char const *(*follow_link)(struct dentry * , void ** ) ;
   int (*permission)(struct inode * , int ) ;
   struct posix_acl *(*get_acl)(struct inode * , int ) ;
   int (*readlink)(struct dentry * , char * , int ) ;
   void (*put_link)(struct inode * , void * ) ;
   int (*create)(struct inode * , struct dentry * , umode_t , bool ) ;
   int (*link)(struct dentry * , struct inode * , struct dentry * ) ;
   int (*unlink)(struct inode * , struct dentry * ) ;
   int (*symlink)(struct inode * , struct dentry * , char const * ) ;
   int (*mkdir)(struct inode * , struct dentry * , umode_t ) ;
   int (*rmdir)(struct inode * , struct dentry * ) ;
   int (*mknod)(struct inode * , struct dentry * , umode_t , dev_t ) ;
   int (*rename)(struct inode * , struct dentry * , struct inode * , struct dentry * ) ;
   int (*rename2)(struct inode * , struct dentry * , struct inode * , struct dentry * ,
                  unsigned int ) ;
   int (*setattr)(struct dentry * , struct iattr * ) ;
   int (*getattr)(struct vfsmount * , struct dentry * , struct kstat * ) ;
   int (*setxattr)(struct dentry * , char const * , void const * , size_t , int ) ;
   ssize_t (*getxattr)(struct dentry * , char const * , void * , size_t ) ;
   ssize_t (*listxattr)(struct dentry * , char * , size_t ) ;
   int (*removexattr)(struct dentry * , char const * ) ;
   int (*fiemap)(struct inode * , struct fiemap_extent_info * , u64 , u64 ) ;
   int (*update_time)(struct inode * , struct timespec * , int ) ;
   int (*atomic_open)(struct inode * , struct dentry * , struct file * , unsigned int ,
                      umode_t , int * ) ;
   int (*tmpfile)(struct inode * , struct dentry * , umode_t ) ;
   int (*set_acl)(struct inode * , struct posix_acl * , int ) ;
};
struct super_operations {
   struct inode *(*alloc_inode)(struct super_block * ) ;
   void (*destroy_inode)(struct inode * ) ;
   void (*dirty_inode)(struct inode * , int ) ;
   int (*write_inode)(struct inode * , struct writeback_control * ) ;
   int (*drop_inode)(struct inode * ) ;
   void (*evict_inode)(struct inode * ) ;
   void (*put_super)(struct super_block * ) ;
   int (*sync_fs)(struct super_block * , int ) ;
   int (*freeze_super)(struct super_block * ) ;
   int (*freeze_fs)(struct super_block * ) ;
   int (*thaw_super)(struct super_block * ) ;
   int (*unfreeze_fs)(struct super_block * ) ;
   int (*statfs)(struct dentry * , struct kstatfs * ) ;
   int (*remount_fs)(struct super_block * , int * , char * ) ;
   void (*umount_begin)(struct super_block * ) ;
   int (*show_options)(struct seq_file * , struct dentry * ) ;
   int (*show_devname)(struct seq_file * , struct dentry * ) ;
   int (*show_path)(struct seq_file * , struct dentry * ) ;
   int (*show_stats)(struct seq_file * , struct dentry * ) ;
   ssize_t (*quota_read)(struct super_block * , int , char * , size_t , loff_t ) ;
   ssize_t (*quota_write)(struct super_block * , int , char const * , size_t ,
                          loff_t ) ;
   struct dquot **(*get_dquots)(struct inode * ) ;
   int (*bdev_try_to_free_page)(struct super_block * , struct page * , gfp_t ) ;
   long (*nr_cached_objects)(struct super_block * , struct shrink_control * ) ;
   long (*free_cached_objects)(struct super_block * , struct shrink_control * ) ;
};
struct file_system_type {
   char const *name ;
   int fs_flags ;
   struct dentry *(*mount)(struct file_system_type * , int , char const * , void * ) ;
   void (*kill_sb)(struct super_block * ) ;
   struct module *owner ;
   struct file_system_type *next ;
   struct hlist_head fs_supers ;
   struct lock_class_key s_lock_key ;
   struct lock_class_key s_umount_key ;
   struct lock_class_key s_vfs_rename_key ;
   struct lock_class_key s_writers_key[3U] ;
   struct lock_class_key i_lock_key ;
   struct lock_class_key i_mutex_key ;
   struct lock_class_key i_mutex_dir_key ;
};
struct usb_device;
struct usb_driver;
struct wusb_dev;
struct ep_device;
struct usb_host_endpoint {
   struct usb_endpoint_descriptor desc ;
   struct usb_ss_ep_comp_descriptor ss_ep_comp ;
   struct list_head urb_list ;
   void *hcpriv ;
   struct ep_device *ep_dev ;
   unsigned char *extra ;
   int extralen ;
   int enabled ;
   int streams ;
};
struct usb_host_interface {
   struct usb_interface_descriptor desc ;
   int extralen ;
   unsigned char *extra ;
   struct usb_host_endpoint *endpoint ;
   char *string ;
};
enum usb_interface_condition {
    USB_INTERFACE_UNBOUND = 0,
    USB_INTERFACE_BINDING = 1,
    USB_INTERFACE_BOUND = 2,
    USB_INTERFACE_UNBINDING = 3
} ;
struct usb_interface {
   struct usb_host_interface *altsetting ;
   struct usb_host_interface *cur_altsetting ;
   unsigned int num_altsetting ;
   struct usb_interface_assoc_descriptor *intf_assoc ;
   int minor ;
   enum usb_interface_condition condition ;
   unsigned char sysfs_files_created : 1 ;
   unsigned char ep_devs_created : 1 ;
   unsigned char unregistering : 1 ;
   unsigned char needs_remote_wakeup : 1 ;
   unsigned char needs_altsetting0 : 1 ;
   unsigned char needs_binding : 1 ;
   unsigned char resetting_device : 1 ;
   struct device dev ;
   struct device *usb_dev ;
   atomic_t pm_usage_cnt ;
   struct work_struct reset_ws ;
};
struct usb_interface_cache {
   unsigned int num_altsetting ;
   struct kref ref ;
   struct usb_host_interface altsetting[0U] ;
};
struct usb_host_config {
   struct usb_config_descriptor desc ;
   char *string ;
   struct usb_interface_assoc_descriptor *intf_assoc[16U] ;
   struct usb_interface *interface[32U] ;
   struct usb_interface_cache *intf_cache[32U] ;
   unsigned char *extra ;
   int extralen ;
};
struct usb_host_bos {
   struct usb_bos_descriptor *desc ;
   struct usb_ext_cap_descriptor *ext_cap ;
   struct usb_ss_cap_descriptor *ss_cap ;
   struct usb_ss_container_id_descriptor *ss_id ;
};
struct usb_devmap {
   unsigned long devicemap[2U] ;
};
struct mon_bus;
struct usb_bus {
   struct device *controller ;
   int busnum ;
   char const *bus_name ;
   u8 uses_dma ;
   u8 uses_pio_for_control ;
   u8 otg_port ;
   unsigned char is_b_host : 1 ;
   unsigned char b_hnp_enable : 1 ;
   unsigned char no_stop_on_short : 1 ;
   unsigned char no_sg_constraint : 1 ;
   unsigned int sg_tablesize ;
   int devnum_next ;
   struct usb_devmap devmap ;
   struct usb_device *root_hub ;
   struct usb_bus *hs_companion ;
   struct list_head bus_list ;
   struct mutex usb_address0_mutex ;
   int bandwidth_allocated ;
   int bandwidth_int_reqs ;
   int bandwidth_isoc_reqs ;
   unsigned int resuming_ports ;
   struct mon_bus *mon_bus ;
   int monitored ;
};
struct usb_tt;
enum usb_device_removable {
    USB_DEVICE_REMOVABLE_UNKNOWN = 0,
    USB_DEVICE_REMOVABLE = 1,
    USB_DEVICE_FIXED = 2
} ;
struct usb2_lpm_parameters {
   unsigned int besl ;
   int timeout ;
};
struct usb3_lpm_parameters {
   unsigned int mel ;
   unsigned int pel ;
   unsigned int sel ;
   int timeout ;
};
struct usb_device {
   int devnum ;
   char devpath[16U] ;
   u32 route ;
   enum usb_device_state state ;
   enum usb_device_speed speed ;
   struct usb_tt *tt ;
   int ttport ;
   unsigned int toggle[2U] ;
   struct usb_device *parent ;
   struct usb_bus *bus ;
   struct usb_host_endpoint ep0 ;
   struct device dev ;
   struct usb_device_descriptor descriptor ;
   struct usb_host_bos *bos ;
   struct usb_host_config *config ;
   struct usb_host_config *actconfig ;
   struct usb_host_endpoint *ep_in[16U] ;
   struct usb_host_endpoint *ep_out[16U] ;
   char **rawdescriptors ;
   unsigned short bus_mA ;
   u8 portnum ;
   u8 level ;
   unsigned char can_submit : 1 ;
   unsigned char persist_enabled : 1 ;
   unsigned char have_langid : 1 ;
   unsigned char authorized : 1 ;
   unsigned char authenticated : 1 ;
   unsigned char wusb : 1 ;
   unsigned char lpm_capable : 1 ;
   unsigned char usb2_hw_lpm_capable : 1 ;
   unsigned char usb2_hw_lpm_besl_capable : 1 ;
   unsigned char usb2_hw_lpm_enabled : 1 ;
   unsigned char usb2_hw_lpm_allowed : 1 ;
   unsigned char usb3_lpm_enabled : 1 ;
   int string_langid ;
   char *product ;
   char *manufacturer ;
   char *serial ;
   struct list_head filelist ;
   int maxchild ;
   u32 quirks ;
   atomic_t urbnum ;
   unsigned long active_duration ;
   unsigned long connect_time ;
   unsigned char do_remote_wakeup : 1 ;
   unsigned char reset_resume : 1 ;
   unsigned char port_is_suspended : 1 ;
   struct wusb_dev *wusb_dev ;
   int slot_id ;
   enum usb_device_removable removable ;
   struct usb2_lpm_parameters l1_params ;
   struct usb3_lpm_parameters u1_params ;
   struct usb3_lpm_parameters u2_params ;
   unsigned int lpm_disable_count ;
};
struct usb_dynids {
   spinlock_t lock ;
   struct list_head list ;
};
struct usbdrv_wrap {
   struct device_driver driver ;
   int for_devices ;
};
struct usb_driver {
   char const *name ;
   int (*probe)(struct usb_interface * , struct usb_device_id const * ) ;
   void (*disconnect)(struct usb_interface * ) ;
   int (*unlocked_ioctl)(struct usb_interface * , unsigned int , void * ) ;
   int (*suspend)(struct usb_interface * , pm_message_t ) ;
   int (*resume)(struct usb_interface * ) ;
   int (*reset_resume)(struct usb_interface * ) ;
   int (*pre_reset)(struct usb_interface * ) ;
   int (*post_reset)(struct usb_interface * ) ;
   struct usb_device_id const *id_table ;
   struct usb_dynids dynids ;
   struct usbdrv_wrap drvwrap ;
   unsigned char no_dynamic_id : 1 ;
   unsigned char supports_autosuspend : 1 ;
   unsigned char disable_hub_initiated_lpm : 1 ;
   unsigned char soft_unbind : 1 ;
};
struct usb_iso_packet_descriptor {
   unsigned int offset ;
   unsigned int length ;
   unsigned int actual_length ;
   int status ;
};
struct urb;
struct usb_anchor {
   struct list_head urb_list ;
   wait_queue_head_t wait ;
   spinlock_t lock ;
   atomic_t suspend_wakeups ;
   unsigned char poisoned : 1 ;
};
struct scatterlist;
struct urb {
   struct kref kref ;
   void *hcpriv ;
   atomic_t use_count ;
   atomic_t reject ;
   int unlinked ;
   struct list_head urb_list ;
   struct list_head anchor_list ;
   struct usb_anchor *anchor ;
   struct usb_device *dev ;
   struct usb_host_endpoint *ep ;
   unsigned int pipe ;
   unsigned int stream_id ;
   int status ;
   unsigned int transfer_flags ;
   void *transfer_buffer ;
   dma_addr_t transfer_dma ;
   struct scatterlist *sg ;
   int num_mapped_sgs ;
   int num_sgs ;
   u32 transfer_buffer_length ;
   u32 actual_length ;
   unsigned char *setup_packet ;
   dma_addr_t setup_dma ;
   int start_frame ;
   int number_of_packets ;
   int interval ;
   int error_count ;
   void *context ;
   void (*complete)(struct urb * ) ;
   struct usb_iso_packet_descriptor iso_frame_desc[0U] ;
};
struct pollfd {
   int fd ;
   short events ;
   short revents ;
};
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
typedef struct poll_table_struct poll_table;
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
};
struct sg_table {
   struct scatterlist *sgl ;
   unsigned int nents ;
   unsigned int orig_nents ;
};
struct dma_attrs {
   unsigned long flags[1U] ;
};
enum dma_data_direction {
    DMA_BIDIRECTIONAL = 0,
    DMA_TO_DEVICE = 1,
    DMA_FROM_DEVICE = 2,
    DMA_NONE = 3
} ;
struct dma_map_ops {
   void *(*alloc)(struct device * , size_t , dma_addr_t * , gfp_t , struct dma_attrs * ) ;
   void (*free)(struct device * , size_t , void * , dma_addr_t , struct dma_attrs * ) ;
   int (*mmap)(struct device * , struct vm_area_struct * , void * , dma_addr_t ,
               size_t , struct dma_attrs * ) ;
   int (*get_sgtable)(struct device * , struct sg_table * , void * , dma_addr_t ,
                      size_t , struct dma_attrs * ) ;
   dma_addr_t (*map_page)(struct device * , struct page * , unsigned long , size_t ,
                          enum dma_data_direction , struct dma_attrs * ) ;
   void (*unmap_page)(struct device * , dma_addr_t , size_t , enum dma_data_direction ,
                      struct dma_attrs * ) ;
   int (*map_sg)(struct device * , struct scatterlist * , int , enum dma_data_direction ,
                 struct dma_attrs * ) ;
   void (*unmap_sg)(struct device * , struct scatterlist * , int , enum dma_data_direction ,
                    struct dma_attrs * ) ;
   void (*sync_single_for_cpu)(struct device * , dma_addr_t , size_t , enum dma_data_direction ) ;
   void (*sync_single_for_device)(struct device * , dma_addr_t , size_t , enum dma_data_direction ) ;
   void (*sync_sg_for_cpu)(struct device * , struct scatterlist * , int , enum dma_data_direction ) ;
   void (*sync_sg_for_device)(struct device * , struct scatterlist * , int , enum dma_data_direction ) ;
   int (*mapping_error)(struct device * , dma_addr_t ) ;
   int (*dma_supported)(struct device * , u64 ) ;
   int (*set_dma_mask)(struct device * , u64 ) ;
   int is_phys ;
};
struct fence;
struct fence_ops;
struct fence_cb;
struct fence {
   struct kref refcount ;
   struct fence_ops const *ops ;
   struct callback_head rcu ;
   struct list_head cb_list ;
   spinlock_t *lock ;
   unsigned int context ;
   unsigned int seqno ;
   unsigned long flags ;
   ktime_t timestamp ;
   int status ;
};
struct fence_cb {
   struct list_head node ;
   void (*func)(struct fence * , struct fence_cb * ) ;
};
struct fence_ops {
   char const *(*get_driver_name)(struct fence * ) ;
   char const *(*get_timeline_name)(struct fence * ) ;
   bool (*enable_signaling)(struct fence * ) ;
   bool (*signaled)(struct fence * ) ;
   long (*wait)(struct fence * , bool , long ) ;
   void (*release)(struct fence * ) ;
   int (*fill_driver_data)(struct fence * , void * , int ) ;
   void (*fence_value_str)(struct fence * , char * , int ) ;
   void (*timeline_value_str)(struct fence * , char * , int ) ;
};
struct dma_buf;
struct dma_buf_attachment;
struct dma_buf_ops {
   int (*attach)(struct dma_buf * , struct device * , struct dma_buf_attachment * ) ;
   void (*detach)(struct dma_buf * , struct dma_buf_attachment * ) ;
   struct sg_table *(*map_dma_buf)(struct dma_buf_attachment * , enum dma_data_direction ) ;
   void (*unmap_dma_buf)(struct dma_buf_attachment * , struct sg_table * , enum dma_data_direction ) ;
   void (*release)(struct dma_buf * ) ;
   int (*begin_cpu_access)(struct dma_buf * , size_t , size_t , enum dma_data_direction ) ;
   void (*end_cpu_access)(struct dma_buf * , size_t , size_t , enum dma_data_direction ) ;
   void *(*kmap_atomic)(struct dma_buf * , unsigned long ) ;
   void (*kunmap_atomic)(struct dma_buf * , unsigned long , void * ) ;
   void *(*kmap)(struct dma_buf * , unsigned long ) ;
   void (*kunmap)(struct dma_buf * , unsigned long , void * ) ;
   int (*mmap)(struct dma_buf * , struct vm_area_struct * ) ;
   void *(*vmap)(struct dma_buf * ) ;
   void (*vunmap)(struct dma_buf * , void * ) ;
};
struct dma_buf_poll_cb_t {
   struct fence_cb cb ;
   wait_queue_head_t *poll ;
   unsigned long active ;
};
struct reservation_object;
struct dma_buf {
   size_t size ;
   struct file *file ;
   struct list_head attachments ;
   struct dma_buf_ops const *ops ;
   struct mutex lock ;
   unsigned int vmapping_counter ;
   void *vmap_ptr ;
   char const *exp_name ;
   struct module *owner ;
   struct list_head list_node ;
   void *priv ;
   struct reservation_object *resv ;
   wait_queue_head_t poll ;
   struct dma_buf_poll_cb_t cb_excl ;
   struct dma_buf_poll_cb_t cb_shared ;
};
struct dma_buf_attachment {
   struct dma_buf *dmabuf ;
   struct device *dev ;
   struct list_head node ;
   void *priv ;
};
struct vb2_fileio_data;
struct vb2_threadio_data;
struct vb2_mem_ops {
   void *(*alloc)(void * , unsigned long , enum dma_data_direction , gfp_t ) ;
   void (*put)(void * ) ;
   struct dma_buf *(*get_dmabuf)(void * , unsigned long ) ;
   void *(*get_userptr)(void * , unsigned long , unsigned long , enum dma_data_direction ) ;
   void (*put_userptr)(void * ) ;
   void (*prepare)(void * ) ;
   void (*finish)(void * ) ;
   void *(*attach_dmabuf)(void * , struct dma_buf * , unsigned long , enum dma_data_direction ) ;
   void (*detach_dmabuf)(void * ) ;
   int (*map_dmabuf)(void * ) ;
   void (*unmap_dmabuf)(void * ) ;
   void *(*vaddr)(void * ) ;
   void *(*cookie)(void * ) ;
   unsigned int (*num_users)(void * ) ;
   int (*mmap)(void * , struct vm_area_struct * ) ;
};
struct vb2_plane {
   void *mem_priv ;
   struct dma_buf *dbuf ;
   unsigned int dbuf_mapped ;
};
enum vb2_buffer_state {
    VB2_BUF_STATE_DEQUEUED = 0,
    VB2_BUF_STATE_PREPARING = 1,
    VB2_BUF_STATE_PREPARED = 2,
    VB2_BUF_STATE_QUEUED = 3,
    VB2_BUF_STATE_ACTIVE = 4,
    VB2_BUF_STATE_DONE = 5,
    VB2_BUF_STATE_ERROR = 6
} ;
struct vb2_buffer {
   struct v4l2_buffer v4l2_buf ;
   struct v4l2_plane v4l2_planes[8U] ;
   struct vb2_queue *vb2_queue ;
   unsigned int num_planes ;
   enum vb2_buffer_state state ;
   struct list_head queued_entry ;
   struct list_head done_entry ;
   struct vb2_plane planes[8U] ;
   u32 cnt_mem_alloc ;
   u32 cnt_mem_put ;
   u32 cnt_mem_get_dmabuf ;
   u32 cnt_mem_get_userptr ;
   u32 cnt_mem_put_userptr ;
   u32 cnt_mem_prepare ;
   u32 cnt_mem_finish ;
   u32 cnt_mem_attach_dmabuf ;
   u32 cnt_mem_detach_dmabuf ;
   u32 cnt_mem_map_dmabuf ;
   u32 cnt_mem_unmap_dmabuf ;
   u32 cnt_mem_vaddr ;
   u32 cnt_mem_cookie ;
   u32 cnt_mem_num_users ;
   u32 cnt_mem_mmap ;
   u32 cnt_buf_init ;
   u32 cnt_buf_prepare ;
   u32 cnt_buf_finish ;
   u32 cnt_buf_cleanup ;
   u32 cnt_buf_queue ;
   u32 cnt_buf_done ;
};
struct vb2_ops {
   int (*queue_setup)(struct vb2_queue * , struct v4l2_format const * , unsigned int * ,
                      unsigned int * , unsigned int * , void ** ) ;
   void (*wait_prepare)(struct vb2_queue * ) ;
   void (*wait_finish)(struct vb2_queue * ) ;
   int (*buf_init)(struct vb2_buffer * ) ;
   int (*buf_prepare)(struct vb2_buffer * ) ;
   void (*buf_finish)(struct vb2_buffer * ) ;
   void (*buf_cleanup)(struct vb2_buffer * ) ;
   int (*start_streaming)(struct vb2_queue * , unsigned int ) ;
   void (*stop_streaming)(struct vb2_queue * ) ;
   void (*buf_queue)(struct vb2_buffer * ) ;
};
struct vb2_queue {
   enum v4l2_buf_type type ;
   unsigned int io_modes ;
   unsigned char fileio_read_once : 1 ;
   unsigned char fileio_write_immediately : 1 ;
   unsigned char allow_zero_bytesused : 1 ;
   struct mutex *lock ;
   struct v4l2_fh *owner ;
   struct vb2_ops const *ops ;
   struct vb2_mem_ops const *mem_ops ;
   void *drv_priv ;
   unsigned int buf_struct_size ;
   u32 timestamp_flags ;
   gfp_t gfp_flags ;
   u32 min_buffers_needed ;
   struct mutex mmap_lock ;
   enum v4l2_memory memory ;
   struct vb2_buffer *bufs[32U] ;
   unsigned int num_buffers ;
   struct list_head queued_list ;
   unsigned int queued_count ;
   atomic_t owned_by_drv_count ;
   struct list_head done_list ;
   spinlock_t done_lock ;
   wait_queue_head_t done_wq ;
   void *alloc_ctx[8U] ;
   unsigned int plane_sizes[8U] ;
   unsigned char streaming : 1 ;
   unsigned char start_streaming_called : 1 ;
   unsigned char error : 1 ;
   unsigned char waiting_for_buffers : 1 ;
   unsigned char last_buffer_dequeued : 1 ;
   struct vb2_fileio_data *fileio ;
   struct vb2_threadio_data *threadio ;
   u32 cnt_queue_setup ;
   u32 cnt_wait_prepare ;
   u32 cnt_wait_finish ;
   u32 cnt_start_streaming ;
   u32 cnt_stop_streaming ;
};
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
};
struct media_pipeline {
};
struct media_pad;
struct media_link {
   struct media_pad *source ;
   struct media_pad *sink ;
   struct media_link *reverse ;
   unsigned long flags ;
};
struct media_entity;
struct media_pad {
   struct media_entity *entity ;
   u16 index ;
   unsigned long flags ;
};
struct media_entity_operations {
   int (*link_setup)(struct media_entity * , struct media_pad const * , struct media_pad const * ,
                     u32 ) ;
   int (*link_validate)(struct media_link * ) ;
};
struct media_device;
struct __anonstruct_dev_280 {
   u32 major ;
   u32 minor ;
};
union __anonunion_info_279 {
   struct __anonstruct_dev_280 dev ;
};
struct media_entity {
   struct list_head list ;
   struct media_device *parent ;
   u32 id ;
   char const *name ;
   u32 type ;
   u32 revision ;
   unsigned long flags ;
   u32 group_id ;
   u16 num_pads ;
   u16 num_links ;
   u16 num_backlinks ;
   u16 max_links ;
   struct media_pad *pads ;
   struct media_link *links ;
   struct media_entity_operations const *ops ;
   int stream_count ;
   int use_count ;
   struct media_pipeline *pipe ;
   union __anonunion_info_279 info ;
};
struct video_device;
struct v4l2_device;
struct v4l2_ctrl_handler;
struct v4l2_prio_state {
   atomic_t prios[4U] ;
};
struct v4l2_file_operations {
   struct module *owner ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl32)(struct file * , unsigned int , unsigned long ) ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   int (*open)(struct file * ) ;
   int (*release)(struct file * ) ;
};
struct v4l2_ioctl_ops;
struct video_device {
   struct media_entity entity ;
   struct v4l2_file_operations const *fops ;
   struct device dev ;
   struct cdev *cdev ;
   struct v4l2_device *v4l2_dev ;
   struct device *dev_parent ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   struct vb2_queue *queue ;
   struct v4l2_prio_state *prio ;
   char name[32U] ;
   int vfl_type ;
   int vfl_dir ;
   int minor ;
   u16 num ;
   unsigned long flags ;
   int index ;
   spinlock_t fh_lock ;
   struct list_head fh_list ;
   int dev_debug ;
   v4l2_std_id tvnorms ;
   void (*release)(struct video_device * ) ;
   struct v4l2_ioctl_ops const *ioctl_ops ;
   unsigned long valid_ioctls[3U] ;
   unsigned long disable_locking[3U] ;
   struct mutex *lock ;
};
struct v4l2_subdev;
struct v4l2_subdev_ops;
struct v4l2_priv_tun_config {
   int tuner ;
   void *priv ;
};
struct media_file_operations {
   struct module *owner ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*open)(struct file * ) ;
   int (*release)(struct file * ) ;
};
struct media_devnode {
   struct media_file_operations const *fops ;
   struct device dev ;
   struct cdev cdev ;
   struct device *parent ;
   int minor ;
   unsigned long flags ;
   void (*release)(struct media_devnode * ) ;
};
struct media_device {
   struct device *dev ;
   struct media_devnode devnode ;
   char model[32U] ;
   char serial[40U] ;
   char bus_info[32U] ;
   u32 hw_revision ;
   u32 driver_version ;
   u32 entity_id ;
   struct list_head entities ;
   spinlock_t lock ;
   struct mutex graph_mutex ;
   int (*link_notify)(struct media_link * , u32 , unsigned int ) ;
};
struct v4l2_mbus_framefmt {
   __u32 width ;
   __u32 height ;
   __u32 code ;
   __u32 field ;
   __u32 colorspace ;
   __u16 ycbcr_enc ;
   __u16 quantization ;
   __u16 xfer_func ;
   __u16 reserved[11U] ;
};
struct v4l2_subdev_format {
   __u32 which ;
   __u32 pad ;
   struct v4l2_mbus_framefmt format ;
   __u32 reserved[8U] ;
};
struct v4l2_subdev_mbus_code_enum {
   __u32 pad ;
   __u32 index ;
   __u32 code ;
   __u32 which ;
   __u32 reserved[8U] ;
};
struct v4l2_subdev_frame_size_enum {
   __u32 index ;
   __u32 pad ;
   __u32 code ;
   __u32 min_width ;
   __u32 max_width ;
   __u32 min_height ;
   __u32 max_height ;
   __u32 which ;
   __u32 reserved[8U] ;
};
struct v4l2_subdev_frame_interval {
   __u32 pad ;
   struct v4l2_fract interval ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_frame_interval_enum {
   __u32 index ;
   __u32 pad ;
   __u32 code ;
   __u32 width ;
   __u32 height ;
   struct v4l2_fract interval ;
   __u32 which ;
   __u32 reserved[8U] ;
};
struct v4l2_subdev_selection {
   __u32 which ;
   __u32 pad ;
   __u32 target ;
   __u32 flags ;
   struct v4l2_rect r ;
   __u32 reserved[8U] ;
};
struct v4l2_async_notifier;
enum v4l2_async_match_type {
    V4L2_ASYNC_MATCH_CUSTOM = 0,
    V4L2_ASYNC_MATCH_DEVNAME = 1,
    V4L2_ASYNC_MATCH_I2C = 2,
    V4L2_ASYNC_MATCH_OF = 3
} ;
struct __anonstruct_of_283 {
   struct device_node const *node ;
};
struct __anonstruct_device_name_284 {
   char const *name ;
};
struct __anonstruct_i2c_285 {
   int adapter_id ;
   unsigned short address ;
};
struct __anonstruct_custom_286 {
   bool (*match)(struct device * , struct v4l2_async_subdev * ) ;
   void *priv ;
};
union __anonunion_match_282 {
   struct __anonstruct_of_283 of ;
   struct __anonstruct_device_name_284 device_name ;
   struct __anonstruct_i2c_285 i2c ;
   struct __anonstruct_custom_286 custom ;
};
struct v4l2_async_subdev {
   enum v4l2_async_match_type match_type ;
   union __anonunion_match_282 match ;
   struct list_head list ;
};
struct v4l2_async_notifier {
   unsigned int num_subdevs ;
   struct v4l2_async_subdev **subdevs ;
   struct v4l2_device *v4l2_dev ;
   struct list_head waiting ;
   struct list_head done ;
   struct list_head list ;
   int (*bound)(struct v4l2_async_notifier * , struct v4l2_subdev * , struct v4l2_async_subdev * ) ;
   int (*complete)(struct v4l2_async_notifier * ) ;
   void (*unbind)(struct v4l2_async_notifier * , struct v4l2_subdev * , struct v4l2_async_subdev * ) ;
};
struct v4l2_m2m_ctx;
struct v4l2_fh {
   struct list_head list ;
   struct video_device *vdev ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   enum v4l2_priority prio ;
   wait_queue_head_t wait ;
   struct list_head subscribed ;
   struct list_head available ;
   unsigned int navailable ;
   u32 sequence ;
   struct v4l2_m2m_ctx *m2m_ctx ;
};
enum v4l2_mbus_type {
    V4L2_MBUS_PARALLEL = 0,
    V4L2_MBUS_BT656 = 1,
    V4L2_MBUS_CSI2 = 2
} ;
struct v4l2_mbus_config {
   enum v4l2_mbus_type type ;
   unsigned int flags ;
};
struct v4l2_subdev_fh;
struct tuner_setup;
struct v4l2_mbus_frame_desc;
struct v4l2_decode_vbi_line {
   u32 is_second_field ;
   u8 *p ;
   u32 line ;
   u32 type ;
};
struct v4l2_subdev_io_pin_config {
   u32 flags ;
   u8 pin ;
   u8 function ;
   u8 value ;
   u8 strength ;
};
struct v4l2_subdev_core_ops {
   int (*log_status)(struct v4l2_subdev * ) ;
   int (*s_io_pin_config)(struct v4l2_subdev * , size_t , struct v4l2_subdev_io_pin_config * ) ;
   int (*init)(struct v4l2_subdev * , u32 ) ;
   int (*load_fw)(struct v4l2_subdev * ) ;
   int (*reset)(struct v4l2_subdev * , u32 ) ;
   int (*s_gpio)(struct v4l2_subdev * , u32 ) ;
   int (*queryctrl)(struct v4l2_subdev * , struct v4l2_queryctrl * ) ;
   int (*g_ctrl)(struct v4l2_subdev * , struct v4l2_control * ) ;
   int (*s_ctrl)(struct v4l2_subdev * , struct v4l2_control * ) ;
   int (*g_ext_ctrls)(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
   int (*s_ext_ctrls)(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
   int (*try_ext_ctrls)(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
   int (*querymenu)(struct v4l2_subdev * , struct v4l2_querymenu * ) ;
   long (*ioctl)(struct v4l2_subdev * , unsigned int , void * ) ;
   long (*compat_ioctl32)(struct v4l2_subdev * , unsigned int , unsigned long ) ;
   int (*g_register)(struct v4l2_subdev * , struct v4l2_dbg_register * ) ;
   int (*s_register)(struct v4l2_subdev * , struct v4l2_dbg_register const * ) ;
   int (*s_power)(struct v4l2_subdev * , int ) ;
   int (*interrupt_service_routine)(struct v4l2_subdev * , u32 , bool * ) ;
   int (*subscribe_event)(struct v4l2_subdev * , struct v4l2_fh * , struct v4l2_event_subscription * ) ;
   int (*unsubscribe_event)(struct v4l2_subdev * , struct v4l2_fh * , struct v4l2_event_subscription * ) ;
};
struct v4l2_subdev_tuner_ops {
   int (*s_radio)(struct v4l2_subdev * ) ;
   int (*s_frequency)(struct v4l2_subdev * , struct v4l2_frequency const * ) ;
   int (*g_frequency)(struct v4l2_subdev * , struct v4l2_frequency * ) ;
   int (*enum_freq_bands)(struct v4l2_subdev * , struct v4l2_frequency_band * ) ;
   int (*g_tuner)(struct v4l2_subdev * , struct v4l2_tuner * ) ;
   int (*s_tuner)(struct v4l2_subdev * , struct v4l2_tuner const * ) ;
   int (*g_modulator)(struct v4l2_subdev * , struct v4l2_modulator * ) ;
   int (*s_modulator)(struct v4l2_subdev * , struct v4l2_modulator const * ) ;
   int (*s_type_addr)(struct v4l2_subdev * , struct tuner_setup * ) ;
   int (*s_config)(struct v4l2_subdev * , struct v4l2_priv_tun_config const * ) ;
};
struct v4l2_subdev_audio_ops {
   int (*s_clock_freq)(struct v4l2_subdev * , u32 ) ;
   int (*s_i2s_clock_freq)(struct v4l2_subdev * , u32 ) ;
   int (*s_routing)(struct v4l2_subdev * , u32 , u32 , u32 ) ;
   int (*s_stream)(struct v4l2_subdev * , int ) ;
};
struct v4l2_mbus_frame_desc_entry {
   u16 flags ;
   u32 pixelcode ;
   u32 length ;
};
struct v4l2_mbus_frame_desc {
   struct v4l2_mbus_frame_desc_entry entry[4U] ;
   unsigned short num_entries ;
};
struct v4l2_subdev_video_ops {
   int (*s_routing)(struct v4l2_subdev * , u32 , u32 , u32 ) ;
   int (*s_crystal_freq)(struct v4l2_subdev * , u32 , u32 ) ;
   int (*g_std)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*s_std)(struct v4l2_subdev * , v4l2_std_id ) ;
   int (*s_std_output)(struct v4l2_subdev * , v4l2_std_id ) ;
   int (*g_std_output)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*querystd)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*g_tvnorms)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*g_tvnorms_output)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*g_input_status)(struct v4l2_subdev * , u32 * ) ;
   int (*s_stream)(struct v4l2_subdev * , int ) ;
   int (*cropcap)(struct v4l2_subdev * , struct v4l2_cropcap * ) ;
   int (*g_crop)(struct v4l2_subdev * , struct v4l2_crop * ) ;
   int (*s_crop)(struct v4l2_subdev * , struct v4l2_crop const * ) ;
   int (*g_parm)(struct v4l2_subdev * , struct v4l2_streamparm * ) ;
   int (*s_parm)(struct v4l2_subdev * , struct v4l2_streamparm * ) ;
   int (*g_frame_interval)(struct v4l2_subdev * , struct v4l2_subdev_frame_interval * ) ;
   int (*s_frame_interval)(struct v4l2_subdev * , struct v4l2_subdev_frame_interval * ) ;
   int (*s_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*g_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*query_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*g_mbus_config)(struct v4l2_subdev * , struct v4l2_mbus_config * ) ;
   int (*s_mbus_config)(struct v4l2_subdev * , struct v4l2_mbus_config const * ) ;
   int (*s_rx_buffer)(struct v4l2_subdev * , void * , unsigned int * ) ;
};
struct v4l2_subdev_vbi_ops {
   int (*decode_vbi_line)(struct v4l2_subdev * , struct v4l2_decode_vbi_line * ) ;
   int (*s_vbi_data)(struct v4l2_subdev * , struct v4l2_sliced_vbi_data const * ) ;
   int (*g_vbi_data)(struct v4l2_subdev * , struct v4l2_sliced_vbi_data * ) ;
   int (*g_sliced_vbi_cap)(struct v4l2_subdev * , struct v4l2_sliced_vbi_cap * ) ;
   int (*s_raw_fmt)(struct v4l2_subdev * , struct v4l2_vbi_format * ) ;
   int (*g_sliced_fmt)(struct v4l2_subdev * , struct v4l2_sliced_vbi_format * ) ;
   int (*s_sliced_fmt)(struct v4l2_subdev * , struct v4l2_sliced_vbi_format * ) ;
};
struct v4l2_subdev_sensor_ops {
   int (*g_skip_top_lines)(struct v4l2_subdev * , u32 * ) ;
   int (*g_skip_frames)(struct v4l2_subdev * , u32 * ) ;
};
enum v4l2_subdev_ir_mode {
    V4L2_SUBDEV_IR_MODE_PULSE_WIDTH = 0
} ;
struct v4l2_subdev_ir_parameters {
   unsigned int bytes_per_data_element ;
   enum v4l2_subdev_ir_mode mode ;
   bool enable ;
   bool interrupt_enable ;
   bool shutdown ;
   bool modulation ;
   u32 max_pulse_width ;
   unsigned int carrier_freq ;
   unsigned int duty_cycle ;
   bool invert_level ;
   bool invert_carrier_sense ;
   u32 noise_filter_min_width ;
   unsigned int carrier_range_lower ;
   unsigned int carrier_range_upper ;
   u32 resolution ;
};
struct v4l2_subdev_ir_ops {
   int (*rx_read)(struct v4l2_subdev * , u8 * , size_t , ssize_t * ) ;
   int (*rx_g_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
   int (*rx_s_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
   int (*tx_write)(struct v4l2_subdev * , u8 * , size_t , ssize_t * ) ;
   int (*tx_g_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
   int (*tx_s_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
};
struct v4l2_subdev_pad_config {
   struct v4l2_mbus_framefmt try_fmt ;
   struct v4l2_rect try_crop ;
   struct v4l2_rect try_compose ;
};
struct v4l2_subdev_pad_ops {
   int (*enum_mbus_code)(struct v4l2_subdev * , struct v4l2_subdev_pad_config * ,
                         struct v4l2_subdev_mbus_code_enum * ) ;
   int (*enum_frame_size)(struct v4l2_subdev * , struct v4l2_subdev_pad_config * ,
                          struct v4l2_subdev_frame_size_enum * ) ;
   int (*enum_frame_interval)(struct v4l2_subdev * , struct v4l2_subdev_pad_config * ,
                              struct v4l2_subdev_frame_interval_enum * ) ;
   int (*get_fmt)(struct v4l2_subdev * , struct v4l2_subdev_pad_config * , struct v4l2_subdev_format * ) ;
   int (*set_fmt)(struct v4l2_subdev * , struct v4l2_subdev_pad_config * , struct v4l2_subdev_format * ) ;
   int (*get_selection)(struct v4l2_subdev * , struct v4l2_subdev_pad_config * , struct v4l2_subdev_selection * ) ;
   int (*set_selection)(struct v4l2_subdev * , struct v4l2_subdev_pad_config * , struct v4l2_subdev_selection * ) ;
   int (*get_edid)(struct v4l2_subdev * , struct v4l2_edid * ) ;
   int (*set_edid)(struct v4l2_subdev * , struct v4l2_edid * ) ;
   int (*dv_timings_cap)(struct v4l2_subdev * , struct v4l2_dv_timings_cap * ) ;
   int (*enum_dv_timings)(struct v4l2_subdev * , struct v4l2_enum_dv_timings * ) ;
   int (*link_validate)(struct v4l2_subdev * , struct media_link * , struct v4l2_subdev_format * ,
                        struct v4l2_subdev_format * ) ;
   int (*get_frame_desc)(struct v4l2_subdev * , unsigned int , struct v4l2_mbus_frame_desc * ) ;
   int (*set_frame_desc)(struct v4l2_subdev * , unsigned int , struct v4l2_mbus_frame_desc * ) ;
};
struct v4l2_subdev_ops {
   struct v4l2_subdev_core_ops const *core ;
   struct v4l2_subdev_tuner_ops const *tuner ;
   struct v4l2_subdev_audio_ops const *audio ;
   struct v4l2_subdev_video_ops const *video ;
   struct v4l2_subdev_vbi_ops const *vbi ;
   struct v4l2_subdev_ir_ops const *ir ;
   struct v4l2_subdev_sensor_ops const *sensor ;
   struct v4l2_subdev_pad_ops const *pad ;
};
struct v4l2_subdev_internal_ops {
   int (*registered)(struct v4l2_subdev * ) ;
   void (*unregistered)(struct v4l2_subdev * ) ;
   int (*open)(struct v4l2_subdev * , struct v4l2_subdev_fh * ) ;
   int (*close)(struct v4l2_subdev * , struct v4l2_subdev_fh * ) ;
};
struct regulator_bulk_data;
struct v4l2_subdev_platform_data {
   struct regulator_bulk_data *regulators ;
   int num_regulators ;
   void *host_priv ;
};
struct v4l2_subdev {
   struct media_entity entity ;
   struct list_head list ;
   struct module *owner ;
   bool owner_v4l2_dev ;
   u32 flags ;
   struct v4l2_device *v4l2_dev ;
   struct v4l2_subdev_ops const *ops ;
   struct v4l2_subdev_internal_ops const *internal_ops ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   char name[32U] ;
   u32 grp_id ;
   void *dev_priv ;
   void *host_priv ;
   struct video_device *devnode ;
   struct device *dev ;
   struct device_node *of_node ;
   struct list_head async_list ;
   struct v4l2_async_subdev *asd ;
   struct v4l2_async_notifier *notifier ;
   struct v4l2_subdev_platform_data *pdata ;
};
struct v4l2_subdev_fh {
   struct v4l2_fh vfh ;
   struct v4l2_subdev_pad_config *pad ;
};
struct v4l2_device {
   struct device *dev ;
   struct media_device *mdev ;
   struct list_head subdevs ;
   spinlock_t lock ;
   char name[36U] ;
   void (*notify)(struct v4l2_subdev * , unsigned int , void * ) ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   struct v4l2_prio_state prio ;
   struct kref ref ;
   void (*release)(struct v4l2_device * ) ;
};
struct v4l2_ioctl_ops {
   int (*vidioc_querycap)(struct file * , void * , struct v4l2_capability * ) ;
   int (*vidioc_enum_fmt_vid_cap)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_overlay)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_out)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_sdr_cap)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_g_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_out_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_sliced_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_sliced_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_sdr_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_out_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_sliced_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_sliced_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_sdr_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_out_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_sliced_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_sliced_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_sdr_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_reqbufs)(struct file * , void * , struct v4l2_requestbuffers * ) ;
   int (*vidioc_querybuf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_qbuf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_expbuf)(struct file * , void * , struct v4l2_exportbuffer * ) ;
   int (*vidioc_dqbuf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_create_bufs)(struct file * , void * , struct v4l2_create_buffers * ) ;
   int (*vidioc_prepare_buf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_overlay)(struct file * , void * , unsigned int ) ;
   int (*vidioc_g_fbuf)(struct file * , void * , struct v4l2_framebuffer * ) ;
   int (*vidioc_s_fbuf)(struct file * , void * , struct v4l2_framebuffer const * ) ;
   int (*vidioc_streamon)(struct file * , void * , enum v4l2_buf_type ) ;
   int (*vidioc_streamoff)(struct file * , void * , enum v4l2_buf_type ) ;
   int (*vidioc_g_std)(struct file * , void * , v4l2_std_id * ) ;
   int (*vidioc_s_std)(struct file * , void * , v4l2_std_id ) ;
   int (*vidioc_querystd)(struct file * , void * , v4l2_std_id * ) ;
   int (*vidioc_enum_input)(struct file * , void * , struct v4l2_input * ) ;
   int (*vidioc_g_input)(struct file * , void * , unsigned int * ) ;
   int (*vidioc_s_input)(struct file * , void * , unsigned int ) ;
   int (*vidioc_enum_output)(struct file * , void * , struct v4l2_output * ) ;
   int (*vidioc_g_output)(struct file * , void * , unsigned int * ) ;
   int (*vidioc_s_output)(struct file * , void * , unsigned int ) ;
   int (*vidioc_queryctrl)(struct file * , void * , struct v4l2_queryctrl * ) ;
   int (*vidioc_query_ext_ctrl)(struct file * , void * , struct v4l2_query_ext_ctrl * ) ;
   int (*vidioc_g_ctrl)(struct file * , void * , struct v4l2_control * ) ;
   int (*vidioc_s_ctrl)(struct file * , void * , struct v4l2_control * ) ;
   int (*vidioc_g_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
   int (*vidioc_s_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
   int (*vidioc_try_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
   int (*vidioc_querymenu)(struct file * , void * , struct v4l2_querymenu * ) ;
   int (*vidioc_enumaudio)(struct file * , void * , struct v4l2_audio * ) ;
   int (*vidioc_g_audio)(struct file * , void * , struct v4l2_audio * ) ;
   int (*vidioc_s_audio)(struct file * , void * , struct v4l2_audio const * ) ;
   int (*vidioc_enumaudout)(struct file * , void * , struct v4l2_audioout * ) ;
   int (*vidioc_g_audout)(struct file * , void * , struct v4l2_audioout * ) ;
   int (*vidioc_s_audout)(struct file * , void * , struct v4l2_audioout const * ) ;
   int (*vidioc_g_modulator)(struct file * , void * , struct v4l2_modulator * ) ;
   int (*vidioc_s_modulator)(struct file * , void * , struct v4l2_modulator const * ) ;
   int (*vidioc_cropcap)(struct file * , void * , struct v4l2_cropcap * ) ;
   int (*vidioc_g_crop)(struct file * , void * , struct v4l2_crop * ) ;
   int (*vidioc_s_crop)(struct file * , void * , struct v4l2_crop const * ) ;
   int (*vidioc_g_selection)(struct file * , void * , struct v4l2_selection * ) ;
   int (*vidioc_s_selection)(struct file * , void * , struct v4l2_selection * ) ;
   int (*vidioc_g_jpegcomp)(struct file * , void * , struct v4l2_jpegcompression * ) ;
   int (*vidioc_s_jpegcomp)(struct file * , void * , struct v4l2_jpegcompression const * ) ;
   int (*vidioc_g_enc_index)(struct file * , void * , struct v4l2_enc_idx * ) ;
   int (*vidioc_encoder_cmd)(struct file * , void * , struct v4l2_encoder_cmd * ) ;
   int (*vidioc_try_encoder_cmd)(struct file * , void * , struct v4l2_encoder_cmd * ) ;
   int (*vidioc_decoder_cmd)(struct file * , void * , struct v4l2_decoder_cmd * ) ;
   int (*vidioc_try_decoder_cmd)(struct file * , void * , struct v4l2_decoder_cmd * ) ;
   int (*vidioc_g_parm)(struct file * , void * , struct v4l2_streamparm * ) ;
   int (*vidioc_s_parm)(struct file * , void * , struct v4l2_streamparm * ) ;
   int (*vidioc_g_tuner)(struct file * , void * , struct v4l2_tuner * ) ;
   int (*vidioc_s_tuner)(struct file * , void * , struct v4l2_tuner const * ) ;
   int (*vidioc_g_frequency)(struct file * , void * , struct v4l2_frequency * ) ;
   int (*vidioc_s_frequency)(struct file * , void * , struct v4l2_frequency const * ) ;
   int (*vidioc_enum_freq_bands)(struct file * , void * , struct v4l2_frequency_band * ) ;
   int (*vidioc_g_sliced_vbi_cap)(struct file * , void * , struct v4l2_sliced_vbi_cap * ) ;
   int (*vidioc_log_status)(struct file * , void * ) ;
   int (*vidioc_s_hw_freq_seek)(struct file * , void * , struct v4l2_hw_freq_seek const * ) ;
   int (*vidioc_g_register)(struct file * , void * , struct v4l2_dbg_register * ) ;
   int (*vidioc_s_register)(struct file * , void * , struct v4l2_dbg_register const * ) ;
   int (*vidioc_g_chip_info)(struct file * , void * , struct v4l2_dbg_chip_info * ) ;
   int (*vidioc_enum_framesizes)(struct file * , void * , struct v4l2_frmsizeenum * ) ;
   int (*vidioc_enum_frameintervals)(struct file * , void * , struct v4l2_frmivalenum * ) ;
   int (*vidioc_s_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) ;
   int (*vidioc_g_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) ;
   int (*vidioc_query_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) ;
   int (*vidioc_enum_dv_timings)(struct file * , void * , struct v4l2_enum_dv_timings * ) ;
   int (*vidioc_dv_timings_cap)(struct file * , void * , struct v4l2_dv_timings_cap * ) ;
   int (*vidioc_g_edid)(struct file * , void * , struct v4l2_edid * ) ;
   int (*vidioc_s_edid)(struct file * , void * , struct v4l2_edid * ) ;
   int (*vidioc_subscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
   int (*vidioc_unsubscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
   long (*vidioc_default)(struct file * , void * , bool , unsigned int , void * ) ;
};
struct v4l2_ctrl_helper;
struct v4l2_ctrl;
union v4l2_ctrl_ptr {
   s32 *p_s32 ;
   s64 *p_s64 ;
   u8 *p_u8 ;
   u16 *p_u16 ;
   u32 *p_u32 ;
   char *p_char ;
   void *p ;
};
struct v4l2_ctrl_ops {
   int (*g_volatile_ctrl)(struct v4l2_ctrl * ) ;
   int (*try_ctrl)(struct v4l2_ctrl * ) ;
   int (*s_ctrl)(struct v4l2_ctrl * ) ;
};
struct v4l2_ctrl_type_ops {
   bool (*equal)(struct v4l2_ctrl const * , u32 , union v4l2_ctrl_ptr , union v4l2_ctrl_ptr ) ;
   void (*init)(struct v4l2_ctrl const * , u32 , union v4l2_ctrl_ptr ) ;
   void (*log)(struct v4l2_ctrl const * ) ;
   int (*validate)(struct v4l2_ctrl const * , u32 , union v4l2_ctrl_ptr ) ;
};
union __anonunion____missing_field_name_287 {
   u64 step ;
   u64 menu_skip_mask ;
};
union __anonunion____missing_field_name_288 {
   char const * const *qmenu ;
   s64 const *qmenu_int ;
};
struct __anonstruct_cur_289 {
   s32 val ;
};
struct v4l2_ctrl {
   struct list_head node ;
   struct list_head ev_subs ;
   struct v4l2_ctrl_handler *handler ;
   struct v4l2_ctrl **cluster ;
   unsigned int ncontrols ;
   unsigned char done : 1 ;
   unsigned char is_new : 1 ;
   unsigned char has_changed : 1 ;
   unsigned char is_private : 1 ;
   unsigned char is_auto : 1 ;
   unsigned char is_int : 1 ;
   unsigned char is_string : 1 ;
   unsigned char is_ptr : 1 ;
   unsigned char is_array : 1 ;
   unsigned char has_volatiles : 1 ;
   unsigned char call_notify : 1 ;
   unsigned char manual_mode_value ;
   struct v4l2_ctrl_ops const *ops ;
   struct v4l2_ctrl_type_ops const *type_ops ;
   u32 id ;
   char const *name ;
   enum v4l2_ctrl_type type ;
   s64 minimum ;
   s64 maximum ;
   s64 default_value ;
   u32 elems ;
   u32 elem_size ;
   u32 dims[4U] ;
   u32 nr_of_dims ;
   union __anonunion____missing_field_name_287 __annonCompField88 ;
   union __anonunion____missing_field_name_288 __annonCompField89 ;
   unsigned long flags ;
   void *priv ;
   s32 val ;
   struct __anonstruct_cur_289 cur ;
   union v4l2_ctrl_ptr p_new ;
   union v4l2_ctrl_ptr p_cur ;
};
struct v4l2_ctrl_ref {
   struct list_head node ;
   struct v4l2_ctrl_ref *next ;
   struct v4l2_ctrl *ctrl ;
   struct v4l2_ctrl_helper *helper ;
};
struct v4l2_ctrl_handler {
   struct mutex _lock ;
   struct mutex *lock ;
   struct list_head ctrls ;
   struct list_head ctrl_refs ;
   struct v4l2_ctrl_ref *cached ;
   struct v4l2_ctrl_ref **buckets ;
   void (*notify)(struct v4l2_ctrl * , void * ) ;
   void *notify_priv ;
   u16 nr_of_buckets ;
   int error ;
};
struct v4l2_ctrl_config {
   struct v4l2_ctrl_ops const *ops ;
   struct v4l2_ctrl_type_ops const *type_ops ;
   u32 id ;
   char const *name ;
   enum v4l2_ctrl_type type ;
   s64 min ;
   s64 max ;
   u64 step ;
   s64 def ;
   u32 dims[4U] ;
   u32 elem_size ;
   u32 flags ;
   u64 menu_skip_mask ;
   char const * const *qmenu ;
   s64 const *qmenu_int ;
   unsigned char is_private : 1 ;
};
struct s2255_mode {
   u32 format ;
   u32 scale ;
   u32 color ;
   u32 fdec ;
   u32 bright ;
   u32 contrast ;
   u32 saturation ;
   u32 hue ;
   u32 single ;
   u32 usb_block ;
   u32 restart ;
};
struct s2255_framei {
   unsigned long size ;
   unsigned long ulState ;
   void *lpvbits ;
   unsigned long cur_size ;
};
struct s2255_bufferi {
   unsigned long dwFrames ;
   struct s2255_framei frame[4U] ;
};
struct s2255_fw {
   int fw_loaded ;
   int fw_size ;
   struct urb *fw_urb ;
   atomic_t fw_state ;
   void *pfw_data ;
   wait_queue_head_t wait_fw ;
   struct firmware const *fw ;
};
struct s2255_pipeinfo {
   u32 max_transfer_size ;
   u32 cur_transfer_size ;
   u8 *transfer_buffer ;
   u32 state ;
   void *stream_urb ;
   void *dev ;
   u32 err_count ;
   u32 idx ;
};
struct s2255_fmt;
struct s2255_dev;
struct s2255_vc {
   struct s2255_dev *dev ;
   struct video_device vdev ;
   struct v4l2_ctrl_handler hdl ;
   struct v4l2_ctrl *jpegqual_ctrl ;
   int resources ;
   struct list_head buf_list ;
   struct s2255_bufferi buffer ;
   struct s2255_mode mode ;
   v4l2_std_id std ;
   unsigned int jpegqual ;
   struct v4l2_captureparm cap_parm ;
   int cur_frame ;
   int last_frame ;
   unsigned long req_image_size ;
   unsigned long pkt_size ;
   int bad_payload ;
   unsigned long frame_count ;
   int jpg_size ;
   int configured ;
   wait_queue_head_t wait_setmode ;
   int setmode_ready ;
   int vidstatus ;
   wait_queue_head_t wait_vidstatus ;
   int vidstatus_ready ;
   unsigned int width ;
   unsigned int height ;
   enum v4l2_field field ;
   struct s2255_fmt const *fmt ;
   int idx ;
   struct vb2_queue vb_vidq ;
   struct mutex vb_lock ;
   spinlock_t qlock ;
};
struct s2255_dev {
   struct s2255_vc vc[4U] ;
   struct v4l2_device v4l2_dev ;
   atomic_t num_channels ;
   int frames ;
   struct mutex lock ;
   struct mutex cmdlock ;
   struct usb_device *udev ;
   struct usb_interface *interface ;
   u8 read_endpoint ;
   struct timer_list timer ;
   struct s2255_fw *fw_data ;
   struct s2255_pipeinfo pipe ;
   u32 cc ;
   int frame_ready ;
   int chn_ready ;
   int dsp_fw_ver ;
   u16 pid ;
   __le32 *cmdbuf ;
};
struct s2255_fmt {
   char *name ;
   u32 fourcc ;
   int depth ;
};
struct s2255_buffer {
   struct vb2_buffer vb ;
   struct list_head list ;
};
typedef int ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
typedef int ldv_func_ret_type___5;
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern struct module __this_module ;
extern int printk(char const * , ...) ;
extern void __dynamic_dev_dbg(struct _ddebug * , struct device const * , char const *
                              , ...) ;
extern void __might_sleep(char const * , int , int ) ;
extern int snprintf(char * , size_t , char const * , ...) ;
void ldv_spin_lock(void) ;
void ldv_spin_unlock(void) ;
extern void *malloc(size_t ) ;
extern void *calloc(size_t , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern int __VERIFIER_nondet_int(void) ;
extern unsigned long __VERIFIER_nondet_ulong(void) ;
extern void abort(void);
void assume_abort_if_not(int cond) {
  if(!cond) {abort();}
}
void *ldv_malloc(size_t size )
{
  void *p ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0) {
    return ((void *)0);
  } else {
    tmp = malloc(size);
    p = tmp;
    assume_abort_if_not((unsigned long )p != (unsigned long )((void *)0));
    return (p);
  }
}
}
void *ldv_zalloc(size_t size )
{
  void *p ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0) {
    return ((void *)0);
  } else {
    tmp = calloc(1UL, size);
    p = tmp;
    assume_abort_if_not((unsigned long )p != (unsigned long )((void *)0));
    return (p);
  }
}
}
void *ldv_init_zalloc(size_t size )
{
  void *p ;
  void *tmp ;
  {
  tmp = calloc(1UL, size);
  p = tmp;
  assume_abort_if_not((unsigned long )p != (unsigned long )((void *)0));
  return (p);
}
}
void *ldv_memset(void *s , int c , size_t n )
{
  void *tmp ;
  {
  tmp = memset(s, c, n);
  return (tmp);
}
}
int ldv_undef_int(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  return (tmp);
}
}
unsigned long ldv_undef_ulong(void)
{
  unsigned long tmp ;
  {
  tmp = __VERIFIER_nondet_ulong();
  return (tmp);
}
}
__inline static void ldv_stop(void)
{
  {
  LDV_STOP: ;
  goto LDV_STOP;
}
}
__inline static long ldv__builtin_expect(long exp , long c )
{
  {
  return (exp);
}
}
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern void __list_add(struct list_head * , struct list_head * , struct list_head * ) ;
__inline static void list_add_tail(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head->prev, head);
  return;
}
}
extern void list_del(struct list_head * ) ;
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
__inline static int atomic_read(atomic_t const *v )
{
  int __var ;
  {
  __var = 0;
  return ((int )*((int const volatile *)(& v->counter)));
}
}
__inline static void atomic_set(atomic_t *v , int i )
{
  {
  v->counter = i;
  return;
}
}
__inline static void atomic_inc(atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; incl %0": "+m" (v->counter));
  return;
}
}
__inline static int atomic_dec_and_test(atomic_t *v )
{
  char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; decl %0; sete %1": "+m" (v->counter),
                       "=qm" (c): : "memory");
  return ((int )((signed char )c) != 0);
}
}
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField18.rlock);
}
}
__inline static void ldv_spin_unlock_irqrestore_12(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->__annonCompField18.rlock, flags);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern long prepare_to_wait_event(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
extern void mutex_destroy(struct mutex * ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
extern unsigned long volatile jiffies ;
extern unsigned long __msecs_to_jiffies(unsigned int const ) ;
__inline static unsigned long msecs_to_jiffies(unsigned int const m )
{
  unsigned long tmp___0 ;
  {
  tmp___0 = __msecs_to_jiffies(m);
  return (tmp___0);
}
}
extern int mod_timer(struct timer_list * , unsigned long ) ;
int ldv_mod_timer_31(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
extern int del_timer_sync(struct timer_list * ) ;
int ldv_del_timer_sync_26(struct timer_list *ldv_func_arg1 ) ;
int ldv_del_timer_sync_33(struct timer_list *ldv_func_arg1 ) ;
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
}
extern long schedule_timeout(long ) ;
extern void kfree(void const * ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
void ldv_check_alloc_nonatomic(void) ;
struct timer_list *ldv_timer_list_1_3 ;
int ldv_timer_1_3 ;
struct timer_list *ldv_timer_list_1_1 ;
int ldv_state_variable_6 ;
struct timer_list *ldv_timer_list_1_0 ;
int ldv_state_variable_0 ;
int ldv_state_variable_5 ;
int ldv_timer_1_2 ;
int ldv_state_variable_2 ;
int ldv_timer_1_1 ;
struct timer_list *ldv_timer_list_1_2 ;
struct usb_interface *s2255_driver_group1 ;
int usb_counter ;
struct v4l2_streamparm *s2255_ioctl_ops_group1 ;
struct v4l2_fh *s2255_ioctl_ops_group4 ;
int LDV_IN_INTERRUPT = 1;
int ldv_timer_1_0 ;
struct vb2_buffer *s2255_video_qops_group0 ;
struct vb2_queue *s2255_video_qops_group1 ;
struct v4l2_buffer *s2255_ioctl_ops_group5 ;
int ldv_state_variable_3 ;
struct file *s2255_ioctl_ops_group3 ;
int ref_cnt ;
struct v4l2_format *s2255_ioctl_ops_group0 ;
int ldv_state_variable_1 ;
int ldv_state_variable_7 ;
int ldv_state_variable_4 ;
struct v4l2_event_subscription const *s2255_ioctl_ops_group2 ;
struct file *s2255_fops_v4l_group0 ;
void timer_init_1(void) ;
void ldv_usb_driver_2(void) ;
int reg_timer_1(struct timer_list *timer , void (*function)(unsigned long ) , unsigned long data ) ;
void ldv_initialize_v4l2_file_operations_6(void) ;
void disable_suitable_timer_1(struct timer_list *timer ) ;
void activate_suitable_timer_1(struct timer_list *timer , unsigned long data ) ;
void activate_pending_timer_1(struct timer_list *timer , unsigned long data , int pending_flag ) ;
void ldv_initialize_vb2_ops_7(void) ;
void choose_timer_1(void) ;
void ldv_timer_1(int state , struct timer_list *timer ) ;
void ldv_initialize_v4l2_ioctl_ops_5(void) ;
extern int request_firmware(struct firmware const ** , char const * , struct device * ) ;
extern void release_firmware(struct firmware const * ) ;
void *ldv_vmalloc_27(unsigned long ldv_func_arg1 ) ;
extern void vfree(void const * ) ;
__inline static int usb_endpoint_dir_in(struct usb_endpoint_descriptor const *epd )
{
  {
  return ((int )((signed char )epd->bEndpointAddress) < 0);
}
}
__inline static int usb_endpoint_xfer_bulk(struct usb_endpoint_descriptor const *epd )
{
  {
  return (((int )epd->bmAttributes & 3) == 2);
}
}
__inline static int usb_endpoint_is_bulk_in(struct usb_endpoint_descriptor const *epd )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = usb_endpoint_xfer_bulk(epd);
  if (tmp != 0) {
    tmp___0 = usb_endpoint_dir_in(epd);
    if (tmp___0 != 0) {
      tmp___1 = 1;
    } else {
      tmp___1 = 0;
    }
  } else {
    tmp___1 = 0;
  }
  return (tmp___1);
}
}
extern void msleep(unsigned int ) ;
__inline static char const *dev_name(struct device const *dev )
{
  char const *tmp ;
  {
  if ((unsigned long )dev->init_name != (unsigned long )((char const * )0)) {
    return ((char const *)dev->init_name);
  } else {
  }
  tmp = kobject_name(& dev->kobj);
  return (tmp);
}
}
__inline static void *dev_get_drvdata(struct device const *dev )
{
  {
  return ((void *)dev->driver_data);
}
}
__inline static void dev_set_drvdata(struct device *dev , void *data )
{
  {
  dev->driver_data = data;
  return;
}
}
extern void dev_err(struct device const * , char const * , ...) ;
extern void _dev_info(struct device const * , char const * , ...) ;
__inline static void *usb_get_intfdata(struct usb_interface *intf )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata((struct device const *)(& intf->dev));
  return (tmp);
}
}
__inline static struct usb_device *interface_to_usbdev(struct usb_interface *intf )
{
  struct device const *__mptr ;
  {
  __mptr = (struct device const *)intf->dev.parent;
  return ((struct usb_device *)__mptr + 0xffffffffffffff70UL);
}
}
extern struct usb_device *usb_get_dev(struct usb_device * ) ;
extern void usb_put_dev(struct usb_device * ) ;
extern int usb_reset_device(struct usb_device * ) ;
__inline static int usb_make_path(struct usb_device *dev , char *buf , size_t size )
{
  int actual ;
  {
  actual = snprintf(buf, size, "usb-%s-%s", (dev->bus)->bus_name, (char *)(& dev->devpath));
  return ((int )size > actual ? actual : -1);
}
}
extern int usb_register_driver(struct usb_driver * , struct module * , char const * ) ;
int ldv_usb_register_driver_34(struct usb_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                               char const *ldv_func_arg3 ) ;
extern void usb_deregister(struct usb_driver * ) ;
void ldv_usb_deregister_35(struct usb_driver *arg ) ;
__inline static void usb_fill_bulk_urb(struct urb *urb , struct usb_device *dev ,
                                       unsigned int pipe , void *transfer_buffer ,
                                       int buffer_length , void (*complete_fn)(struct urb * ) ,
                                       void *context )
{
  {
  urb->dev = dev;
  urb->pipe = pipe;
  urb->transfer_buffer = transfer_buffer;
  urb->transfer_buffer_length = (u32 )buffer_length;
  urb->complete = complete_fn;
  urb->context = context;
  return;
}
}
struct urb *ldv_usb_alloc_urb_29(int ldv_func_arg1 , gfp_t flags ) ;
struct urb *ldv_usb_alloc_urb_32(int ldv_func_arg1 , gfp_t flags ) ;
extern void usb_free_urb(struct urb * ) ;
int ldv_usb_submit_urb_24(struct urb *ldv_func_arg1 , gfp_t flags ) ;
int ldv_usb_submit_urb_25(struct urb *ldv_func_arg1 , gfp_t flags ) ;
int ldv_usb_submit_urb_28(struct urb *ldv_func_arg1 , gfp_t flags ) ;
int ldv_usb_submit_urb_30(struct urb *ldv_func_arg1 , gfp_t flags ) ;
extern void usb_kill_urb(struct urb * ) ;
extern int usb_control_msg(struct usb_device * , unsigned int , __u8 , __u8 , __u16 ,
                           __u16 , void * , __u16 , int ) ;
extern int usb_bulk_msg(struct usb_device * , unsigned int , void * , int , int * ,
                        int ) ;
__inline static unsigned int __create_pipe(struct usb_device *dev , unsigned int endpoint )
{
  {
  return ((unsigned int )(dev->devnum << 8) | (endpoint << 15));
}
}
extern void *vb2_plane_vaddr(struct vb2_buffer * , unsigned int ) ;
extern void vb2_buffer_done(struct vb2_buffer * , enum vb2_buffer_state ) ;
extern int vb2_queue_init(struct vb2_queue * ) ;
__inline static bool vb2_is_streaming(struct vb2_queue *q )
{
  {
  return ((int )q->streaming != 0);
}
}
__inline static bool vb2_is_busy(struct vb2_queue *q )
{
  {
  return (q->num_buffers != 0U);
}
}
__inline static void *vb2_get_drv_priv(struct vb2_queue *q )
{
  {
  return (q->drv_priv);
}
}
__inline static void vb2_set_plane_payload(struct vb2_buffer *vb , unsigned int plane_no ,
                                           unsigned long size )
{
  {
  if (vb->num_planes > plane_no) {
    vb->v4l2_planes[plane_no].bytesused = (__u32 )size;
  } else {
  }
  return;
}
}
__inline static unsigned long vb2_plane_size(struct vb2_buffer *vb , unsigned int plane_no )
{
  {
  if (vb->num_planes > plane_no) {
    return ((unsigned long )vb->v4l2_planes[plane_no].length);
  } else {
  }
  return (0UL);
}
}
extern int vb2_ioctl_reqbufs(struct file * , void * , struct v4l2_requestbuffers * ) ;
extern int vb2_ioctl_querybuf(struct file * , void * , struct v4l2_buffer * ) ;
extern int vb2_ioctl_qbuf(struct file * , void * , struct v4l2_buffer * ) ;
extern int vb2_ioctl_dqbuf(struct file * , void * , struct v4l2_buffer * ) ;
extern int vb2_ioctl_streamon(struct file * , void * , enum v4l2_buf_type ) ;
extern int vb2_ioctl_streamoff(struct file * , void * , enum v4l2_buf_type ) ;
extern int vb2_fop_mmap(struct file * , struct vm_area_struct * ) ;
extern int vb2_fop_release(struct file * ) ;
extern ssize_t vb2_fop_read(struct file * , char * , size_t , loff_t * ) ;
extern unsigned int vb2_fop_poll(struct file * , poll_table * ) ;
extern void vb2_ops_wait_prepare(struct vb2_queue * ) ;
extern void vb2_ops_wait_finish(struct vb2_queue * ) ;
extern struct vb2_mem_ops const vb2_vmalloc_memops ;
extern int __video_register_device(struct video_device * , int , int , int , struct module * ) ;
__inline static int video_register_device(struct video_device *vdev , int type , int nr )
{
  int tmp ;
  {
  tmp = __video_register_device(vdev, type, nr, 1, (vdev->fops)->owner);
  return (tmp);
}
}
extern void video_unregister_device(struct video_device * ) ;
__inline static void *video_get_drvdata(struct video_device *vdev )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata((struct device const *)(& vdev->dev));
  return (tmp);
}
}
__inline static void video_set_drvdata(struct video_device *vdev , void *data )
{
  {
  dev_set_drvdata(& vdev->dev, data);
  return;
}
}
extern struct video_device *video_devdata(struct file * ) ;
__inline static void *video_drvdata(struct file *file )
{
  struct video_device *tmp ;
  void *tmp___0 ;
  {
  tmp = video_devdata(file);
  tmp___0 = video_get_drvdata(tmp);
  return (tmp___0);
}
}
__inline static char const *video_device_node_name(struct video_device *vdev )
{
  char const *tmp ;
  {
  tmp = dev_name((struct device const *)(& vdev->dev));
  return (tmp);
}
}
extern void v4l2_get_timestamp(struct timeval * ) ;
extern int v4l2_fh_open(struct file * ) ;
extern int v4l2_device_register(struct device * , struct v4l2_device * ) ;
extern void v4l2_device_disconnect(struct v4l2_device * ) ;
extern void v4l2_device_unregister(struct v4l2_device * ) ;
extern long video_ioctl2(struct file * , unsigned int , unsigned long ) ;
extern int v4l2_ctrl_handler_init_class(struct v4l2_ctrl_handler * , unsigned int ,
                                        struct lock_class_key * , char const * ) ;
extern void v4l2_ctrl_handler_free(struct v4l2_ctrl_handler * ) ;
__inline static void v4l2_ctrl_lock(struct v4l2_ctrl *ctrl )
{
  {
  mutex_lock_nested((ctrl->handler)->lock, 0U);
  return;
}
}
__inline static void v4l2_ctrl_unlock(struct v4l2_ctrl *ctrl )
{
  {
  mutex_unlock((ctrl->handler)->lock);
  return;
}
}
extern struct v4l2_ctrl *v4l2_ctrl_new_custom(struct v4l2_ctrl_handler * , struct v4l2_ctrl_config const * ,
                                              void * ) ;
extern struct v4l2_ctrl *v4l2_ctrl_new_std(struct v4l2_ctrl_handler * , struct v4l2_ctrl_ops const * ,
                                           u32 , s64 , s64 , u64 , s64 ) ;
extern int __v4l2_ctrl_s_ctrl(struct v4l2_ctrl * , s32 ) ;
__inline static int v4l2_ctrl_s_ctrl(struct v4l2_ctrl *ctrl , s32 val )
{
  int rval ;
  {
  v4l2_ctrl_lock(ctrl);
  rval = __v4l2_ctrl_s_ctrl(ctrl, val);
  v4l2_ctrl_unlock(ctrl);
  return (rval);
}
}
extern int v4l2_ctrl_log_status(struct file * , void * ) ;
extern int v4l2_ctrl_subscribe_event(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
extern int v4l2_event_unsubscribe(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
__inline static struct s2255_dev *to_s2255_dev(struct v4l2_device *v4l2_dev )
{
  struct v4l2_device const *__mptr ;
  {
  __mptr = (struct v4l2_device const *)v4l2_dev;
  return ((struct s2255_dev *)__mptr + 0xffffffffffffc640UL);
}
}
static unsigned long G_chnmap[4U] = { 3UL, 2UL, 1UL, 0UL};
static int debug ;
static int s2255_start_readpipe(struct s2255_dev *dev ) ;
static void s2255_stop_readpipe(struct s2255_dev *dev ) ;
static int s2255_start_acquire(struct s2255_vc *vc ) ;
static int s2255_stop_acquire(struct s2255_vc *vc ) ;
static void s2255_fillbuff(struct s2255_vc *vc , struct s2255_buffer *buf , int jpgsize ) ;
static int s2255_set_mode(struct s2255_vc *vc , struct s2255_mode *mode ) ;
static int s2255_board_shutdown(struct s2255_dev *dev ) ;
static void s2255_fwload_start(struct s2255_dev *dev , int reset ) ;
static void s2255_destroy(struct s2255_dev *dev ) ;
static long s2255_vendor_req(struct s2255_dev *dev , unsigned char Request , u16 Index ,
                             u16 Value , void *TransferBuffer , s32 TransferBufferLength ,
                             int bOut ) ;
static struct usb_driver s2255_driver ;
static int video_nr = -1;
static int jpeg_enable = 1;
static struct usb_device_id s2255_table[3U] = { {3U, 6467U, 8789U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL},
        {3U, 6467U, 8791U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0UL}};
struct usb_device_id const __mod_usb__s2255_table_device_table[3U] ;
static struct s2255_fmt const formats[6U] = { {(char *)"4:2:2, packed, YUYV", 1448695129U, 16},
        {(char *)"4:2:2, packed, UYVY", 1498831189U, 16},
        {(char *)"4:2:2, planar, YUV422P", 1345466932U, 16},
        {(char *)"8bpp GREY", 1497715271U, 8},
        {(char *)"JPG", 1195724874U, 24},
        {(char *)"MJPG", 1196444237U, 24}};
static int norm_maxw(struct s2255_vc *vc )
{
  {
  return ((vc->std & 63744ULL) != 0ULL ? 640 : 704);
}
}
static int norm_maxh(struct s2255_vc *vc )
{
  {
  return ((vc->std & 63744ULL) != 0ULL ? 480 : 576);
}
}
static int norm_minw(struct s2255_vc *vc )
{
  {
  return ((vc->std & 63744ULL) != 0ULL ? 320 : 352);
}
}
static int norm_minh(struct s2255_vc *vc )
{
  {
  return ((vc->std & 63744ULL) != 0ULL ? 240 : 288);
}
}
static void planar422p_to_yuv_packed(unsigned char const *in , unsigned char *out ,
                                     int width , int height , int fmt )
{
  unsigned char *pY ;
  unsigned char *pCb ;
  unsigned char *pCr ;
  unsigned long size ;
  unsigned int i ;
  unsigned char *tmp ;
  unsigned char *tmp___0 ;
  unsigned char *tmp___1 ;
  unsigned char *tmp___2 ;
  unsigned char *tmp___3 ;
  unsigned char *tmp___4 ;
  unsigned char *tmp___5 ;
  unsigned char *tmp___6 ;
  {
  size = (unsigned long )(height * width);
  pY = (unsigned char *)in;
  pCr = (unsigned char *)in + (unsigned long )(height * width);
  pCb = (unsigned char *)in + ((unsigned long )(height * width) + (unsigned long )((height * width) / 2));
  i = 0U;
  goto ldv_36515;
  ldv_36514: ;
  if (fmt == 1448695129) {
    tmp = pY;
    pY = pY + 1;
    *(out + (unsigned long )i) = *tmp;
  } else {
    tmp___0 = pCr;
    pCr = pCr + 1;
    *(out + (unsigned long )i) = *tmp___0;
  }
  if (fmt == 1448695129) {
    tmp___1 = pCr;
    pCr = pCr + 1;
    *(out + (unsigned long )(i + 1U)) = *tmp___1;
  } else {
    tmp___2 = pY;
    pY = pY + 1;
    *(out + (unsigned long )(i + 1U)) = *tmp___2;
  }
  if (fmt == 1448695129) {
    tmp___3 = pY;
    pY = pY + 1;
    *(out + (unsigned long )(i + 2U)) = *tmp___3;
  } else {
    tmp___4 = pCb;
    pCb = pCb + 1;
    *(out + (unsigned long )(i + 2U)) = *tmp___4;
  }
  if (fmt == 1448695129) {
    tmp___5 = pCb;
    pCb = pCb + 1;
    *(out + (unsigned long )(i + 3U)) = *tmp___5;
  } else {
    tmp___6 = pY;
    pY = pY + 1;
    *(out + (unsigned long )(i + 3U)) = *tmp___6;
  }
  i = i + 4U;
  ldv_36515: ;
  if ((unsigned long )i < size * 2UL) {
    goto ldv_36514;
  } else {
  }
  return;
}
}
static void s2255_reset_dsppower(struct s2255_dev *dev )
{
  {
  s2255_vendor_req(dev, 64, 0, 1, (void *)0, 0, 1);
  msleep(20U);
  s2255_vendor_req(dev, 80, 0, 0, (void *)0, 0, 1);
  msleep(600U);
  s2255_vendor_req(dev, 16, 0, 0, (void *)0, 0, 1);
  return;
}
}
static void s2255_timer(unsigned long user_data )
{
  struct s2255_fw *data ;
  int tmp ;
  {
  data = (struct s2255_fw *)user_data;
  tmp = ldv_usb_submit_urb_24(data->fw_urb, 32U);
  if (tmp < 0) {
    printk("\vs2255: can\'t submit urb\n");
    atomic_set(& data->fw_state, 3);
    __wake_up(& data->wait_fw, 3U, 1, (void *)0);
    return;
  } else {
  }
  return;
}
}
static void s2255_fwchunk_complete(struct urb *urb )
{
  struct s2255_fw *data ;
  struct usb_device *udev ;
  int len ;
  unsigned int tmp ;
  int tmp___0 ;
  {
  data = (struct s2255_fw *)urb->context;
  udev = urb->dev;
  if (urb->status != 0) {
    dev_err((struct device const *)(& udev->dev), "URB failed with status %d\n",
            urb->status);
    atomic_set(& data->fw_state, 3);
    __wake_up(& data->wait_fw, 3U, 1, (void *)0);
    return;
  } else {
  }
  if ((unsigned long )data->fw_urb == (unsigned long )((struct urb *)0)) {
    dev_err((struct device const *)(& udev->dev), "s2255 - disconnected\n");
    atomic_set(& data->fw_state, 3);
    __wake_up(& data->wait_fw, 3U, 1, (void *)0);
    return;
  } else {
  }
  if (data->fw_loaded < data->fw_size) {
    len = data->fw_loaded + 512 > data->fw_size ? data->fw_size % 512 : 512;
    if (len <= 511) {
      memset(data->pfw_data, 0, 512UL);
    } else {
    }
    memcpy_guard(data->pfw_data, (void const *)(data->fw)->data + (unsigned long )data->fw_loaded,
                 (size_t )len);
    memcpy(data->pfw_data, (void const *)(data->fw)->data + (unsigned long )data->fw_loaded,
             (size_t )len);
    tmp = __create_pipe(udev, 2U);
    usb_fill_bulk_urb(data->fw_urb, udev, tmp | 3221225472U, data->pfw_data, 512,
                      & s2255_fwchunk_complete, (void *)data);
    tmp___0 = ldv_usb_submit_urb_25(data->fw_urb, 32U);
    if (tmp___0 < 0) {
      dev_err((struct device const *)(& udev->dev), "failed submit URB\n");
      atomic_set(& data->fw_state, 3);
      __wake_up(& data->wait_fw, 3U, 1, (void *)0);
      return;
    } else {
    }
    data->fw_loaded = data->fw_loaded + len;
  } else {
    atomic_set(& data->fw_state, 1);
  }
  return;
}
}
static void s2255_got_frame(struct s2255_vc *vc , int jpgsize )
{
  struct s2255_buffer *buf ;
  struct s2255_dev *dev ;
  struct s2255_dev *tmp ;
  unsigned long flags ;
  int tmp___0 ;
  struct list_head const *__mptr ;
  {
  tmp = to_s2255_dev(vc->vdev.v4l2_dev);
  dev = tmp;
  flags = 0UL;
  ldv_spin_lock();
  tmp___0 = list_empty((struct list_head const *)(& vc->buf_list));
  if (tmp___0 != 0) {
    if (debug > 0) {
      printk("\017%s: No active queue to serve\n", (char *)(& dev->v4l2_dev.name));
    } else {
    }
    spin_unlock_irqrestore(& vc->qlock, flags);
    return;
  } else {
  }
  __mptr = (struct list_head const *)vc->buf_list.next;
  buf = (struct s2255_buffer *)__mptr + 0xfffffffffffffc60UL;
  list_del(& buf->list);
  v4l2_get_timestamp(& buf->vb.v4l2_buf.timestamp);
  buf->vb.v4l2_buf.field = (__u32 )vc->field;
  buf->vb.v4l2_buf.sequence = (__u32 )vc->frame_count;
  spin_unlock_irqrestore(& vc->qlock, flags);
  s2255_fillbuff(vc, buf, jpgsize);
  vb2_buffer_done(& buf->vb, 5);
  if (debug > 1) {
    printk("\017%s: %s: [buf] [%p]\n", (char *)(& dev->v4l2_dev.name), "s2255_got_frame",
           buf);
  } else {
  }
  return;
}
}
static struct s2255_fmt const *format_by_fourcc(int fourcc )
{
  unsigned int i ;
  {
  i = 0U;
  goto ldv_36548;
  ldv_36547: ;
  if ((unsigned int )formats[i].fourcc == 4294967295U) {
    goto ldv_36546;
  } else {
  }
  if (jpeg_enable == 0 && ((unsigned int )formats[i].fourcc == 1195724874U || (unsigned int )formats[i].fourcc == 1196444237U)) {
    goto ldv_36546;
  } else {
  }
  if ((unsigned int )formats[i].fourcc == (unsigned int )fourcc) {
    return ((struct s2255_fmt const *)(& formats) + (unsigned long )i);
  } else {
  }
  ldv_36546:
  i = i + 1U;
  ldv_36548: ;
  if (i <= 5U) {
    goto ldv_36547;
  } else {
  }
  return ((struct s2255_fmt const *)0);
}
}
static void s2255_fillbuff(struct s2255_vc *vc , struct s2255_buffer *buf , int jpgsize )
{
  int pos ;
  char const *tmpbuf ;
  char *vbuf ;
  void *tmp ;
  unsigned long last_frame ;
  struct s2255_dev *dev ;
  {
  pos = 0;
  tmp = vb2_plane_vaddr(& buf->vb, 0U);
  vbuf = (char *)tmp;
  dev = vc->dev;
  if ((unsigned long )vbuf == (unsigned long )((char *)0)) {
    return;
  } else {
  }
  last_frame = (unsigned long )vc->last_frame;
  if (last_frame != 0xffffffffffffffffUL) {
    tmpbuf = (char const *)vc->buffer.frame[last_frame].lpvbits;
    switch ((vc->fmt)->fourcc) {
    case 1448695129U: ;
    case 1498831189U:
    planar422p_to_yuv_packed((unsigned char const *)tmpbuf, (unsigned char *)vbuf,
                             (int )vc->width, (int )vc->height, (int )(vc->fmt)->fourcc);
    goto ldv_36562;
    case 1497715271U:
    memcpy_guard((void *)vbuf, (void const *)tmpbuf, (size_t )(vc->width * vc->height));
    memcpy((void *)vbuf, (void const *)tmpbuf, (size_t )(vc->width * vc->height));
    goto ldv_36562;
    case 1195724874U: ;
    case 1196444237U:
    vb2_set_plane_payload(& buf->vb, 0U, (unsigned long )jpgsize);
    memcpy_guard((void *)vbuf, (void const *)tmpbuf, (size_t )jpgsize);
    memcpy((void *)vbuf, (void const *)tmpbuf, (size_t )jpgsize);
    goto ldv_36562;
    case 1345466932U:
    memcpy_guard((void *)vbuf, (void const *)tmpbuf, (size_t )((vc->width * vc->height) * 2U));
    memcpy((void *)vbuf, (void const *)tmpbuf, (size_t )((vc->width * vc->height) * 2U));
    goto ldv_36562;
    default:
    printk("\016s2255: unknown format?\n");
    }
    ldv_36562:
    vc->last_frame = -1;
  } else {
    printk("\vs2255: =======no frame\n");
    return;
  }
  if (debug > 1) {
    printk("\017%s: s2255fill at : Buffer 0x%08lx size= %d\n", (char *)(& dev->v4l2_dev.name),
           (unsigned long )vbuf, pos);
  } else {
  }
  return;
}
}
static int queue_setup(struct vb2_queue *vq , struct v4l2_format const *fmt , unsigned int *nbuffers ,
                       unsigned int *nplanes , unsigned int *sizes , void **alloc_ctxs )
{
  struct s2255_vc *vc ;
  void *tmp ;
  {
  tmp = vb2_get_drv_priv(vq);
  vc = (struct s2255_vc *)tmp;
  if (*nbuffers <= 1U) {
    *nbuffers = 2U;
  } else {
  }
  *nplanes = 1U;
  *sizes = (vc->width * vc->height) * (unsigned int )((vc->fmt)->depth >> 3);
  return (0);
}
}
static int buffer_prepare(struct vb2_buffer *vb )
{
  struct s2255_vc *vc ;
  void *tmp ;
  struct s2255_buffer *buf ;
  struct vb2_buffer const *__mptr ;
  int w ;
  int h ;
  unsigned long size ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  unsigned long tmp___4 ;
  {
  tmp = vb2_get_drv_priv(vb->vb2_queue);
  vc = (struct s2255_vc *)tmp;
  __mptr = (struct vb2_buffer const *)vb;
  buf = (struct s2255_buffer *)__mptr;
  w = (int )vc->width;
  h = (int )vc->height;
  if (debug > 3) {
    printk("\017%s: %s\n", (char *)(& (vc->dev)->v4l2_dev.name), "buffer_prepare");
  } else {
  }
  if ((unsigned long )vc->fmt == (unsigned long )((struct s2255_fmt const *)0)) {
    return (-22);
  } else {
  }
  tmp___0 = norm_minw(vc);
  if (tmp___0 > w) {
    goto _L;
  } else {
    tmp___1 = norm_maxw(vc);
    if (tmp___1 < w) {
      goto _L;
    } else {
      tmp___2 = norm_minh(vc);
      if (tmp___2 > h) {
        goto _L;
      } else {
        tmp___3 = norm_maxh(vc);
        if (tmp___3 < h) {
          _L:
          if (debug > 3) {
            printk("\017%s: invalid buffer prepare\n", (char *)(& (vc->dev)->v4l2_dev.name));
          } else {
          }
          return (-22);
        } else {
        }
      }
    }
  }
  size = (unsigned long )((w * h) * (int )((vc->fmt)->depth >> 3));
  tmp___4 = vb2_plane_size(vb, 0U);
  if (tmp___4 < size) {
    if (debug > 3) {
      printk("\017%s: invalid buffer prepare\n", (char *)(& (vc->dev)->v4l2_dev.name));
    } else {
    }
    return (-22);
  } else {
  }
  vb2_set_plane_payload(& buf->vb, 0U, size);
  return (0);
}
}
static void buffer_queue(struct vb2_buffer *vb )
{
  struct s2255_buffer *buf ;
  struct vb2_buffer const *__mptr ;
  struct s2255_vc *vc ;
  void *tmp ;
  unsigned long flags ;
  {
  __mptr = (struct vb2_buffer const *)vb;
  buf = (struct s2255_buffer *)__mptr;
  tmp = vb2_get_drv_priv(vb->vb2_queue);
  vc = (struct s2255_vc *)tmp;
  flags = 0UL;
  if (debug > 0) {
    printk("\017%s: %s\n", (char *)(& (vc->dev)->v4l2_dev.name), "buffer_queue");
  } else {
  }
  ldv_spin_lock();
  list_add_tail(& buf->list, & vc->buf_list);
  spin_unlock_irqrestore(& vc->qlock, flags);
  return;
}
}
static int start_streaming(struct vb2_queue *vq , unsigned int count ) ;
static void stop_streaming(struct vb2_queue *vq ) ;
static struct vb2_ops s2255_video_qops =
     {& queue_setup, & vb2_ops_wait_prepare, & vb2_ops_wait_finish, 0, & buffer_prepare,
    0, 0, & start_streaming, & stop_streaming, & buffer_queue};
static int vidioc_querycap(struct file *file , void *priv , struct v4l2_capability *cap )
{
  struct s2255_vc *vc ;
  void *tmp ;
  struct s2255_dev *dev ;
  {
  tmp = video_drvdata(file);
  vc = (struct s2255_vc *)tmp;
  dev = vc->dev;
  strlcpy((char *)(& cap->driver), "s2255", 16UL);
  strlcpy((char *)(& cap->card), "s2255", 32UL);
  usb_make_path(dev->udev, (char *)(& cap->bus_info), 32UL);
  cap->device_caps = 83886081U;
  cap->capabilities = cap->device_caps | 2147483648U;
  return (0);
}
}
static int vidioc_enum_fmt_vid_cap(struct file *file , void *priv , struct v4l2_fmtdesc *f )
{
  int index ;
  {
  index = (int )f->index;
  if ((unsigned int )index > 5U) {
    return (-22);
  } else {
  }
  if (jpeg_enable == 0 && ((unsigned int )formats[index].fourcc == 1195724874U || (unsigned int )formats[index].fourcc == 1196444237U)) {
    return (-22);
  } else {
  }
  strlcpy((char *)(& f->description), (char const *)formats[index].name, 32UL);
  f->pixelformat = formats[index].fourcc;
  return (0);
}
}
static int vidioc_g_fmt_vid_cap(struct file *file , void *priv , struct v4l2_format *f )
{
  struct s2255_vc *vc ;
  void *tmp ;
  int is_ntsc ;
  {
  tmp = video_drvdata(file);
  vc = (struct s2255_vc *)tmp;
  is_ntsc = (int )vc->std & 63744;
  f->fmt.pix.width = vc->width;
  f->fmt.pix.height = vc->height;
  if (f->fmt.pix.height >= (is_ntsc != 0 ? 480U : 576U)) {
    f->fmt.pix.field = 4U;
  } else {
    f->fmt.pix.field = 2U;
  }
  f->fmt.pix.pixelformat = (vc->fmt)->fourcc;
  f->fmt.pix.bytesperline = f->fmt.pix.width * (__u32 )((vc->fmt)->depth >> 3);
  f->fmt.pix.sizeimage = f->fmt.pix.height * f->fmt.pix.bytesperline;
  f->fmt.pix.colorspace = 1U;
  f->fmt.pix.priv = 0U;
  return (0);
}
}
static int vidioc_try_fmt_vid_cap(struct file *file , void *priv , struct v4l2_format *f )
{
  struct s2255_fmt const *fmt ;
  enum v4l2_field field ;
  struct s2255_vc *vc ;
  void *tmp ;
  int is_ntsc ;
  {
  tmp = video_drvdata(file);
  vc = (struct s2255_vc *)tmp;
  is_ntsc = (int )vc->std & 63744;
  fmt = format_by_fourcc((int )f->fmt.pix.pixelformat);
  if ((unsigned long )fmt == (unsigned long )((struct s2255_fmt const *)0)) {
    return (-22);
  } else {
  }
  field = (enum v4l2_field )f->fmt.pix.field;
  if (debug > 49) {
    printk("\017%s: %s NTSC: %d suggested width: %d, height: %d\n", (char *)(& (vc->dev)->v4l2_dev.name),
           "vidioc_try_fmt_vid_cap", is_ntsc, f->fmt.pix.width, f->fmt.pix.height);
  } else {
  }
  if (is_ntsc != 0) {
    if (f->fmt.pix.height > 479U) {
      f->fmt.pix.height = 480U;
      field = 4;
    } else {
      f->fmt.pix.height = 240U;
      field = 2;
    }
    if (f->fmt.pix.width > 639U) {
      f->fmt.pix.width = 640U;
    } else
    if (f->fmt.pix.width > 639U) {
      f->fmt.pix.width = 640U;
    } else
    if (f->fmt.pix.width > 319U) {
      f->fmt.pix.width = 320U;
    } else {
      f->fmt.pix.width = 320U;
    }
  } else {
    if (f->fmt.pix.height > 575U) {
      f->fmt.pix.height = 576U;
      field = 4;
    } else {
      f->fmt.pix.height = 288U;
      field = 2;
    }
    if (f->fmt.pix.width > 703U) {
      f->fmt.pix.width = 704U;
    } else
    if (f->fmt.pix.width > 703U) {
      f->fmt.pix.width = 704U;
    } else
    if (f->fmt.pix.width > 351U) {
      f->fmt.pix.width = 352U;
    } else {
      f->fmt.pix.width = 352U;
    }
  }
  f->fmt.pix.field = (__u32 )field;
  f->fmt.pix.bytesperline = f->fmt.pix.width * (__u32 )fmt->depth >> 3;
  f->fmt.pix.sizeimage = f->fmt.pix.height * f->fmt.pix.bytesperline;
  f->fmt.pix.colorspace = 1U;
  f->fmt.pix.priv = 0U;
  if (debug > 49) {
    printk("\017%s: %s: set width %d height %d field %d\n", (char *)(& (vc->dev)->v4l2_dev.name),
           "vidioc_try_fmt_vid_cap", f->fmt.pix.width, f->fmt.pix.height, f->fmt.pix.field);
  } else {
  }
  return (0);
}
}
static int vidioc_s_fmt_vid_cap(struct file *file , void *priv , struct v4l2_format *f )
{
  struct s2255_vc *vc ;
  void *tmp ;
  struct s2255_fmt const *fmt ;
  struct vb2_queue *q ;
  struct s2255_mode mode ;
  int ret ;
  bool tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = video_drvdata(file);
  vc = (struct s2255_vc *)tmp;
  q = & vc->vb_vidq;
  ret = vidioc_try_fmt_vid_cap(file, (void *)vc, f);
  if (ret < 0) {
    return (ret);
  } else {
  }
  fmt = format_by_fourcc((int )f->fmt.pix.pixelformat);
  if ((unsigned long )fmt == (unsigned long )((struct s2255_fmt const *)0)) {
    return (-22);
  } else {
  }
  tmp___0 = vb2_is_busy(q);
  if ((int )tmp___0) {
    if (debug > 0) {
      printk("\017%s: queue busy\n", (char *)(& (vc->dev)->v4l2_dev.name));
    } else {
    }
    return (-16);
  } else {
  }
  mode = vc->mode;
  vc->fmt = fmt;
  vc->width = f->fmt.pix.width;
  vc->height = f->fmt.pix.height;
  vc->field = (enum v4l2_field )f->fmt.pix.field;
  tmp___2 = norm_minw(vc);
  if (vc->width > (unsigned int )tmp___2) {
    tmp___1 = norm_minh(vc);
    if (vc->height > (unsigned int )tmp___1) {
      if ((int )vc->cap_parm.capturemode & 1) {
        mode.scale = 4U;
      } else {
        mode.scale = 1U;
      }
    } else {
      mode.scale = 2U;
    }
  } else {
    mode.scale = 3U;
  }
  switch ((vc->fmt)->fourcc) {
  case 1497715271U:
  mode.color = mode.color & 4294967040U;
  mode.color = mode.color | 4U;
  goto ldv_36646;
  case 1195724874U: ;
  case 1196444237U:
  mode.color = mode.color & 4294967040U;
  mode.color = mode.color | 5U;
  mode.color = mode.color | (vc->jpegqual << 8);
  goto ldv_36646;
  case 1345466932U:
  mode.color = mode.color & 4294967040U;
  mode.color = mode.color | 1U;
  goto ldv_36646;
  case 1448695129U: ;
  case 1498831189U: ;
  default:
  mode.color = mode.color & 4294967040U;
  mode.color = mode.color | 2U;
  goto ldv_36646;
  }
  ldv_36646: ;
  if (((mode.color ^ vc->mode.color) & 255U) != 0U) {
    mode.restart = 1U;
  } else
  if (mode.scale != vc->mode.scale) {
    mode.restart = 1U;
  } else
  if (mode.format != vc->mode.format) {
    mode.restart = 1U;
  } else {
  }
  vc->mode = mode;
  s2255_set_mode(vc, & mode);
  return (0);
}
}
static int s2255_write_config(struct usb_device *udev , unsigned char *pbuf , int size )
{
  int pipe ;
  int done ;
  long retval ;
  unsigned int tmp ;
  int tmp___0 ;
  {
  retval = -1L;
  if ((unsigned long )udev != (unsigned long )((struct usb_device *)0)) {
    tmp = __create_pipe(udev, 2U);
    pipe = (int )(tmp | 3221225472U);
    tmp___0 = usb_bulk_msg(udev, (unsigned int )pipe, (void *)pbuf, size, & done,
                           500);
    retval = (long )tmp___0;
  } else {
  }
  return ((int )retval);
}
}
static u32 get_transfer_size(struct s2255_mode *mode )
{
  int linesPerFrame ;
  int pixelsPerLine ;
  u32 outImageSize ;
  u32 usbInSize ;
  unsigned int mask_mult ;
  {
  linesPerFrame = 640;
  pixelsPerLine = 240;
  if ((unsigned long )mode == (unsigned long )((struct s2255_mode *)0)) {
    return (0U);
  } else {
  }
  if (mode->format == 1U) {
    switch (mode->scale) {
    case 1U: ;
    case 4U:
    linesPerFrame = 480;
    pixelsPerLine = 640;
    goto ldv_36671;
    case 2U:
    linesPerFrame = 240;
    pixelsPerLine = 640;
    goto ldv_36671;
    case 3U:
    linesPerFrame = 240;
    pixelsPerLine = 320;
    goto ldv_36671;
    default: ;
    goto ldv_36671;
    }
    ldv_36671: ;
  } else
  if (mode->format == 2U) {
    switch (mode->scale) {
    case 1U: ;
    case 4U:
    linesPerFrame = 576;
    pixelsPerLine = 704;
    goto ldv_36677;
    case 2U:
    linesPerFrame = 288;
    pixelsPerLine = 704;
    goto ldv_36677;
    case 3U:
    linesPerFrame = 288;
    pixelsPerLine = 352;
    goto ldv_36677;
    default: ;
    goto ldv_36677;
    }
    ldv_36677: ;
  } else {
  }
  outImageSize = (u32 )(linesPerFrame * pixelsPerLine);
  if ((mode->color & 255U) != 4U) {
    outImageSize = outImageSize * 2U;
  } else {
  }
  usbInSize = outImageSize + 512U;
  mask_mult = 4294950912U;
  if ((~ mask_mult & usbInSize) != 0U) {
    usbInSize = (usbInSize & mask_mult) + 16384U;
  } else {
  }
  return (usbInSize);
}
}
static void s2255_print_cfg(struct s2255_dev *sdev , struct s2255_mode *mode )
{
  struct device *dev ;
  {
  dev = & (sdev->udev)->dev;
  _dev_info((struct device const *)dev, "------------------------------------------------\n");
  _dev_info((struct device const *)dev, "format: %d\nscale %d\n", mode->format,
            mode->scale);
  _dev_info((struct device const *)dev, "fdec: %d\ncolor %d\n", mode->fdec, mode->color);
  _dev_info((struct device const *)dev, "bright: 0x%x\n", mode->bright);
  _dev_info((struct device const *)dev, "------------------------------------------------\n");
  return;
}
}
static int s2255_set_mode(struct s2255_vc *vc , struct s2255_mode *mode )
{
  int res ;
  unsigned long chn_rev ;
  struct s2255_dev *dev ;
  struct s2255_dev *tmp ;
  int i ;
  __le32 *buffer ;
  u32 tmp___0 ;
  long __ret ;
  unsigned long tmp___1 ;
  wait_queue_t __wait ;
  long __ret___0 ;
  unsigned long tmp___2 ;
  long __int ;
  long tmp___3 ;
  bool __cond ;
  bool __cond___0 ;
  {
  tmp = to_s2255_dev(vc->vdev.v4l2_dev);
  dev = tmp;
  buffer = dev->cmdbuf;
  mutex_lock_nested(& dev->cmdlock, 0U);
  chn_rev = G_chnmap[vc->idx];
  if (debug > 2) {
    printk("\017%s: %s channel: %d\n", (char *)(& dev->v4l2_dev.name), "s2255_set_mode",
           vc->idx);
  } else {
  }
  if ((mode->color & 255U) == 5U) {
    mode->color = mode->color & 4294967040U;
    mode->color = mode->color | 5U;
    mode->color = mode->color & 4294902015U;
    mode->color = mode->color | (vc->jpegqual << 8);
  } else {
  }
  vc->mode = *mode;
  tmp___0 = get_transfer_size(mode);
  vc->req_image_size = (unsigned long )tmp___0;
  if (debug > 0) {
    printk("\017%s: %s: reqsize %ld\n", (char *)(& dev->v4l2_dev.name), "s2255_set_mode",
           vc->req_image_size);
  } else {
  }
  *buffer = 576045278U;
  *(buffer + 1UL) = (unsigned int )chn_rev;
  *(buffer + 2UL) = 3257225232U;
  i = 0;
  goto ldv_36697;
  ldv_36696:
  *(buffer + (unsigned long )(i + 3)) = *((u32 *)(& vc->mode) + (unsigned long )i);
  i = i + 1;
  ldv_36697: ;
  if ((unsigned int )i <= 10U) {
    goto ldv_36696;
  } else {
  }
  vc->setmode_ready = 0;
  res = s2255_write_config(dev->udev, (unsigned char *)buffer, 512);
  if (debug != 0) {
    s2255_print_cfg(dev, mode);
  } else {
  }
  if (mode->restart != 0U) {
    tmp___1 = msecs_to_jiffies(500U);
    __ret = (long )tmp___1;
    __might_sleep("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/6926/dscv_tempdir/dscv/ri/43_2a/drivers/media/usb/s2255/s2255drv.c",
                  1050, 0);
    __cond___0 = vc->setmode_ready != 0;
    if ((int )__cond___0 && __ret == 0L) {
      __ret = 1L;
    } else {
    }
    if (((int )__cond___0 || __ret == 0L) == 0) {
      tmp___2 = msecs_to_jiffies(500U);
      __ret___0 = (long )tmp___2;
      INIT_LIST_HEAD(& __wait.task_list);
      __wait.flags = 0U;
      ldv_36709:
      tmp___3 = prepare_to_wait_event(& vc->wait_setmode, & __wait, 2);
      __int = tmp___3;
      __cond = vc->setmode_ready != 0;
      if ((int )__cond && __ret___0 == 0L) {
        __ret___0 = 1L;
      } else {
      }
      if (((int )__cond || __ret___0 == 0L) != 0) {
        goto ldv_36708;
      } else {
      }
      __ret___0 = schedule_timeout(__ret___0);
      goto ldv_36709;
      ldv_36708:
      finish_wait(& vc->wait_setmode, & __wait);
      __ret = __ret___0;
    } else {
    }
    if (vc->setmode_ready != 1) {
      if (debug >= 0) {
        printk("\017%s: s2255: no set mode response\n", (char *)(& dev->v4l2_dev.name));
      } else {
      }
      res = -14;
    } else {
    }
  } else {
  }
  vc->mode.restart = 0U;
  if (debug > 0) {
    printk("\017%s: %s chn %d, result: %d\n", (char *)(& dev->v4l2_dev.name), "s2255_set_mode",
           vc->idx, res);
  } else {
  }
  mutex_unlock(& dev->cmdlock);
  return (res);
}
}
static int s2255_cmd_status(struct s2255_vc *vc , u32 *pstatus )
{
  int res ;
  u32 chn_rev ;
  struct s2255_dev *dev ;
  struct s2255_dev *tmp ;
  __le32 *buffer ;
  long __ret ;
  unsigned long tmp___0 ;
  wait_queue_t __wait ;
  long __ret___0 ;
  unsigned long tmp___1 ;
  long __int ;
  long tmp___2 ;
  bool __cond ;
  bool __cond___0 ;
  {
  tmp = to_s2255_dev(vc->vdev.v4l2_dev);
  dev = tmp;
  buffer = dev->cmdbuf;
  mutex_lock_nested(& dev->cmdlock, 0U);
  chn_rev = (u32 )G_chnmap[vc->idx];
  if (debug > 3) {
    printk("\017%s: %s chan %d\n", (char *)(& dev->v4l2_dev.name), "s2255_cmd_status",
           vc->idx);
  } else {
  }
  *buffer = 576045278U;
  *(buffer + 1UL) = chn_rev;
  *(buffer + 2UL) = 3257225280U;
  *pstatus = 0U;
  vc->vidstatus_ready = 0;
  res = s2255_write_config(dev->udev, (unsigned char *)buffer, 512);
  tmp___0 = msecs_to_jiffies(350U);
  __ret = (long )tmp___0;
  __might_sleep("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/6926/dscv_tempdir/dscv/ri/43_2a/drivers/media/usb/s2255/s2255drv.c",
                1082, 0);
  __cond___0 = vc->vidstatus_ready != 0;
  if ((int )__cond___0 && __ret == 0L) {
    __ret = 1L;
  } else {
  }
  if (((int )__cond___0 || __ret == 0L) == 0) {
    tmp___1 = msecs_to_jiffies(350U);
    __ret___0 = (long )tmp___1;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    ldv_36731:
    tmp___2 = prepare_to_wait_event(& vc->wait_vidstatus, & __wait, 2);
    __int = tmp___2;
    __cond = vc->vidstatus_ready != 0;
    if ((int )__cond && __ret___0 == 0L) {
      __ret___0 = 1L;
    } else {
    }
    if (((int )__cond || __ret___0 == 0L) != 0) {
      goto ldv_36730;
    } else {
    }
    __ret___0 = schedule_timeout(__ret___0);
    goto ldv_36731;
    ldv_36730:
    finish_wait(& vc->wait_vidstatus, & __wait);
    __ret = __ret___0;
  } else {
  }
  if (vc->vidstatus_ready != 1) {
    if (debug >= 0) {
      printk("\017%s: s2255: no vidstatus response\n", (char *)(& dev->v4l2_dev.name));
    } else {
    }
    res = -14;
  } else {
  }
  *pstatus = (u32 )vc->vidstatus;
  if (debug > 3) {
    printk("\017%s: %s, vid status %d\n", (char *)(& dev->v4l2_dev.name), "s2255_cmd_status",
           *pstatus);
  } else {
  }
  mutex_unlock(& dev->cmdlock);
  return (res);
}
}
static int start_streaming(struct vb2_queue *vq , unsigned int count )
{
  struct s2255_vc *vc ;
  void *tmp ;
  int j ;
  int tmp___0 ;
  {
  tmp = vb2_get_drv_priv(vq);
  vc = (struct s2255_vc *)tmp;
  vc->last_frame = -1;
  vc->bad_payload = 0;
  vc->cur_frame = 0;
  vc->frame_count = 0UL;
  j = 0;
  goto ldv_36741;
  ldv_36740:
  vc->buffer.frame[j].ulState = 0UL;
  vc->buffer.frame[j].cur_size = 0UL;
  j = j + 1;
  ldv_36741: ;
  if (j <= 3) {
    goto ldv_36740;
  } else {
  }
  tmp___0 = s2255_start_acquire(vc);
  return (tmp___0);
}
}
static void stop_streaming(struct vb2_queue *vq )
{
  struct s2255_vc *vc ;
  void *tmp ;
  struct s2255_buffer *buf ;
  struct s2255_buffer *node ;
  unsigned long flags ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  tmp = vb2_get_drv_priv(vq);
  vc = (struct s2255_vc *)tmp;
  s2255_stop_acquire(vc);
  ldv_spin_lock();
  __mptr = (struct list_head const *)vc->buf_list.next;
  buf = (struct s2255_buffer *)__mptr + 0xfffffffffffffc60UL;
  __mptr___0 = (struct list_head const *)buf->list.next;
  node = (struct s2255_buffer *)__mptr___0 + 0xfffffffffffffc60UL;
  goto ldv_36757;
  ldv_36756:
  list_del(& buf->list);
  vb2_buffer_done(& buf->vb, 6);
  if (debug > 1) {
    printk("\017%s: [%p/%d] done\n", (char *)(& (vc->dev)->v4l2_dev.name), buf, buf->vb.v4l2_buf.index);
  } else {
  }
  buf = node;
  __mptr___1 = (struct list_head const *)node->list.next;
  node = (struct s2255_buffer *)__mptr___1 + 0xfffffffffffffc60UL;
  ldv_36757: ;
  if ((unsigned long )(& buf->list) != (unsigned long )(& vc->buf_list)) {
    goto ldv_36756;
  } else {
  }
  spin_unlock_irqrestore(& vc->qlock, flags);
  return;
}
}
static int vidioc_s_std(struct file *file , void *priv , v4l2_std_id i )
{
  struct s2255_vc *vc ;
  void *tmp ;
  struct s2255_mode mode ;
  struct vb2_queue *q ;
  bool tmp___0 ;
  {
  tmp = video_drvdata(file);
  vc = (struct s2255_vc *)tmp;
  q = & vc->vb_vidq;
  tmp___0 = vb2_is_busy(q);
  if ((int )tmp___0) {
    return (-16);
  } else {
  }
  mode = vc->mode;
  if ((i & 63744ULL) != 0ULL) {
    if (debug > 3) {
      printk("\017%s: %s 60 Hz\n", (char *)(& (vc->dev)->v4l2_dev.name), "vidioc_s_std");
    } else {
    }
    if (mode.format != 1U) {
      mode.restart = 1U;
      mode.format = 1U;
      mode.fdec = 1U;
      vc->width = 640U;
      vc->height = 480U;
    } else {
    }
  } else
  if ((i & 16713471ULL) != 0ULL) {
    if (debug > 3) {
      printk("\017%s: %s 50 Hz\n", (char *)(& (vc->dev)->v4l2_dev.name), "vidioc_s_std");
    } else {
    }
    if (mode.format != 2U) {
      mode.restart = 1U;
      mode.format = 2U;
      mode.fdec = 1U;
      vc->width = 704U;
      vc->height = 576U;
    } else {
    }
  } else {
    return (-22);
  }
  vc->std = i;
  if (mode.restart != 0U) {
    s2255_set_mode(vc, & mode);
  } else {
  }
  return (0);
}
}
static int vidioc_g_std(struct file *file , void *priv , v4l2_std_id *i )
{
  struct s2255_vc *vc ;
  void *tmp ;
  {
  tmp = video_drvdata(file);
  vc = (struct s2255_vc *)tmp;
  *i = vc->std;
  return (0);
}
}
static int vidioc_enum_input(struct file *file , void *priv , struct v4l2_input *inp )
{
  struct s2255_vc *vc ;
  void *tmp ;
  struct s2255_dev *dev ;
  u32 status ;
  int rc ;
  {
  tmp = video_drvdata(file);
  vc = (struct s2255_vc *)tmp;
  dev = vc->dev;
  status = 0U;
  if (inp->index != 0U) {
    return (-22);
  } else {
  }
  inp->type = 2U;
  inp->std = 16777215ULL;
  inp->status = 0U;
  if (dev->dsp_fw_ver > 4) {
    rc = s2255_cmd_status(vc, & status);
    if (debug > 3) {
      printk("\017%s: s2255_cmd_status rc: %d status %x\n", (char *)(& dev->v4l2_dev.name),
             rc, status);
    } else {
    }
    if (rc == 0) {
      inp->status = (int )status & 1 ? 0U : 2U;
    } else {
    }
  } else {
  }
  switch ((int )dev->pid) {
  case 8789: ;
  default:
  strlcpy((char *)(& inp->name), "Composite", 32UL);
  goto ldv_36785;
  case 8791:
  strlcpy((char *)(& inp->name), vc->idx <= 1 ? "Composite" : "S-Video", 32UL);
  goto ldv_36785;
  }
  ldv_36785: ;
  return (0);
}
}
static int vidioc_g_input(struct file *file , void *priv , unsigned int *i )
{
  {
  *i = 0U;
  return (0);
}
}
static int vidioc_s_input(struct file *file , void *priv , unsigned int i )
{
  {
  if (i != 0U) {
    return (-22);
  } else {
  }
  return (0);
}
}
static int s2255_s_ctrl(struct v4l2_ctrl *ctrl )
{
  struct s2255_vc *vc ;
  struct v4l2_ctrl_handler const *__mptr ;
  struct s2255_mode mode ;
  {
  __mptr = (struct v4l2_ctrl_handler const *)ctrl->handler;
  vc = (struct s2255_vc *)__mptr + 0xfffffffffffff8d0UL;
  mode = vc->mode;
  switch (ctrl->id) {
  case 9963776U:
  mode.bright = (u32 )ctrl->val;
  goto ldv_36805;
  case 9963777U:
  mode.contrast = (u32 )ctrl->val;
  goto ldv_36805;
  case 9963779U:
  mode.hue = (u32 )ctrl->val;
  goto ldv_36805;
  case 9963778U:
  mode.saturation = (u32 )ctrl->val;
  goto ldv_36805;
  case 9967920U:
  mode.color = mode.color & 4293984255U;
  mode.color = mode.color | (ctrl->val == 0 ? 65536U : 0U);
  goto ldv_36805;
  case 10291459U:
  vc->jpegqual = (unsigned int )ctrl->val;
  return (0);
  default: ;
  return (-22);
  }
  ldv_36805:
  mode.restart = 0U;
  s2255_set_mode(vc, & mode);
  return (0);
}
}
static int vidioc_g_jpegcomp(struct file *file , void *priv , struct v4l2_jpegcompression *jc )
{
  struct s2255_vc *vc ;
  void *tmp ;
  {
  tmp = video_drvdata(file);
  vc = (struct s2255_vc *)tmp;
  memset((void *)jc, 0, 140UL);
  jc->quality = (int )vc->jpegqual;
  if (debug > 1) {
    printk("\017%s: %s: quality %d\n", (char *)(& (vc->dev)->v4l2_dev.name), "vidioc_g_jpegcomp",
           jc->quality);
  } else {
  }
  return (0);
}
}
static int vidioc_s_jpegcomp(struct file *file , void *priv , struct v4l2_jpegcompression const *jc )
{
  struct s2255_vc *vc ;
  void *tmp ;
  {
  tmp = video_drvdata(file);
  vc = (struct s2255_vc *)tmp;
  if ((int )jc->quality < 0 || (int )jc->quality > 100) {
    return (-22);
  } else {
  }
  v4l2_ctrl_s_ctrl(vc->jpegqual_ctrl, jc->quality);
  if (debug > 1) {
    printk("\017%s: %s: quality %d\n", (char *)(& (vc->dev)->v4l2_dev.name), "vidioc_s_jpegcomp",
           jc->quality);
  } else {
  }
  return (0);
}
}
static int vidioc_g_parm(struct file *file , void *priv , struct v4l2_streamparm *sp )
{
  __u32 def_num ;
  __u32 def_dem ;
  struct s2255_vc *vc ;
  void *tmp ;
  {
  tmp = video_drvdata(file);
  vc = (struct s2255_vc *)tmp;
  if (sp->type != 1U) {
    return (-22);
  } else {
  }
  sp->parm.capture.capability = 4096U;
  sp->parm.capture.capturemode = vc->cap_parm.capturemode;
  sp->parm.capture.readbuffers = 2U;
  def_num = vc->mode.format == 1U ? 1001U : 1000U;
  def_dem = vc->mode.format == 1U ? 30000U : 25000U;
  sp->parm.capture.timeperframe.denominator = def_dem;
  switch (vc->mode.fdec) {
  default: ;
  case 1U:
  sp->parm.capture.timeperframe.numerator = def_num;
  goto ldv_36836;
  case 2U:
  sp->parm.capture.timeperframe.numerator = def_num * 2U;
  goto ldv_36836;
  case 3U:
  sp->parm.capture.timeperframe.numerator = def_num * 3U;
  goto ldv_36836;
  case 5U:
  sp->parm.capture.timeperframe.numerator = def_num * 5U;
  goto ldv_36836;
  }
  ldv_36836: ;
  if (debug > 3) {
    printk("\017%s: %s capture mode, %d timeperframe %d/%d\n", (char *)(& (vc->dev)->v4l2_dev.name),
           "vidioc_g_parm", sp->parm.capture.capturemode, sp->parm.capture.timeperframe.numerator,
           sp->parm.capture.timeperframe.denominator);
  } else {
  }
  return (0);
}
}
static int vidioc_s_parm(struct file *file , void *priv , struct v4l2_streamparm *sp )
{
  struct s2255_vc *vc ;
  void *tmp ;
  struct s2255_mode mode ;
  int fdec ;
  __u32 def_num ;
  __u32 def_dem ;
  bool tmp___0 ;
  {
  tmp = video_drvdata(file);
  vc = (struct s2255_vc *)tmp;
  fdec = 1;
  if (sp->type != 1U) {
    return (-22);
  } else {
  }
  mode = vc->mode;
  if (vc->cap_parm.capturemode != sp->parm.capture.capturemode) {
    tmp___0 = vb2_is_streaming(& vc->vb_vidq);
    if ((int )tmp___0) {
      return (-16);
    } else {
    }
  } else {
  }
  def_num = mode.format == 1U ? 1001U : 1000U;
  def_dem = mode.format == 1U ? 30000U : 25000U;
  if (sp->parm.capture.timeperframe.denominator != def_dem) {
    sp->parm.capture.timeperframe.numerator = def_num;
  } else
  if (sp->parm.capture.timeperframe.numerator <= def_num) {
    sp->parm.capture.timeperframe.numerator = def_num;
  } else
  if (sp->parm.capture.timeperframe.numerator <= def_num * 2U) {
    sp->parm.capture.timeperframe.numerator = def_num * 2U;
    fdec = 2;
  } else
  if (sp->parm.capture.timeperframe.numerator <= def_num * 3U) {
    sp->parm.capture.timeperframe.numerator = def_num * 3U;
    fdec = 3;
  } else {
    sp->parm.capture.timeperframe.numerator = def_num * 5U;
    fdec = 5;
  }
  mode.fdec = (u32 )fdec;
  sp->parm.capture.timeperframe.denominator = def_dem;
  sp->parm.capture.readbuffers = 2U;
  s2255_set_mode(vc, & mode);
  if (debug > 3) {
    printk("\017%s: %s capture mode, %d timeperframe %d/%d, fdec %d\n", (char *)(& (vc->dev)->v4l2_dev.name),
           "vidioc_s_parm", sp->parm.capture.capturemode, sp->parm.capture.timeperframe.numerator,
           sp->parm.capture.timeperframe.denominator, fdec);
  } else {
  }
  return (0);
}
}
static struct v4l2_frmsize_discrete const ntsc_sizes[3U] = { {640U, 480U},
        {640U, 240U},
        {320U, 240U}};
static struct v4l2_frmsize_discrete const pal_sizes[3U] = { {704U, 576U},
        {704U, 288U},
        {352U, 288U}};
static int vidioc_enum_framesizes(struct file *file , void *priv , struct v4l2_frmsizeenum *fe )
{
  struct s2255_vc *vc ;
  void *tmp ;
  int is_ntsc ;
  struct s2255_fmt const *fmt ;
  {
  tmp = video_drvdata(file);
  vc = (struct s2255_vc *)tmp;
  is_ntsc = (int )vc->std & 63744;
  if (fe->index > 2U) {
    return (-22);
  } else {
  }
  fmt = format_by_fourcc((int )fe->pixel_format);
  if ((unsigned long )fmt == (unsigned long )((struct s2255_fmt const *)0)) {
    return (-22);
  } else {
  }
  fe->type = 1U;
  fe->__annonCompField58.discrete = is_ntsc != 0 ? ntsc_sizes[fe->index] : pal_sizes[fe->index];
  return (0);
}
}
static int vidioc_enum_frameintervals(struct file *file , void *priv , struct v4l2_frmivalenum *fe )
{
  struct s2255_vc *vc ;
  void *tmp ;
  struct s2255_fmt const *fmt ;
  struct v4l2_frmsize_discrete const *sizes ;
  int is_ntsc ;
  int frm_dec[4U] ;
  int i ;
  {
  tmp = video_drvdata(file);
  vc = (struct s2255_vc *)tmp;
  is_ntsc = (int )vc->std & 63744;
  frm_dec[0] = 1;
  frm_dec[1] = 2;
  frm_dec[2] = 3;
  frm_dec[3] = 5;
  if (fe->index > 3U) {
    return (-22);
  } else {
  }
  fmt = format_by_fourcc((int )fe->pixel_format);
  if ((unsigned long )fmt == (unsigned long )((struct s2255_fmt const *)0)) {
    return (-22);
  } else {
  }
  sizes = is_ntsc != 0 ? (struct v4l2_frmsize_discrete const *)(& ntsc_sizes) : (struct v4l2_frmsize_discrete const *)(& pal_sizes);
  i = 0;
  goto ldv_36875;
  ldv_36874: ;
  if (fe->width == (__u32 )sizes->width && fe->height == (__u32 )sizes->height) {
    goto ldv_36873;
  } else {
  }
  i = i + 1;
  sizes = sizes + 1;
  ldv_36875: ;
  if (i <= 2) {
    goto ldv_36874;
  } else {
  }
  ldv_36873: ;
  if (i == 3) {
    return (-22);
  } else {
  }
  fe->type = 1U;
  fe->__annonCompField59.discrete.denominator = is_ntsc != 0 ? 30000U : 25000U;
  fe->__annonCompField59.discrete.numerator = (__u32 )((is_ntsc != 0 ? 1001 : 1000) * frm_dec[fe->index]);
  if (debug > 3) {
    printk("\017%s: %s discrete %d/%d\n", (char *)(& (vc->dev)->v4l2_dev.name), "vidioc_enum_frameintervals",
           fe->__annonCompField59.discrete.numerator, fe->__annonCompField59.discrete.denominator);
  } else {
  }
  return (0);
}
}
static int s2255_open(struct file *file )
{
  struct s2255_vc *vc ;
  void *tmp ;
  struct s2255_dev *dev ;
  int state ;
  int rc ;
  long __ret ;
  unsigned long tmp___0 ;
  wait_queue_t __wait ;
  long __ret___0 ;
  unsigned long tmp___1 ;
  long __int ;
  long tmp___2 ;
  bool __cond ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  bool __cond___0 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  long __ret___1 ;
  unsigned long tmp___9 ;
  wait_queue_t __wait___0 ;
  long __ret___2 ;
  unsigned long tmp___10 ;
  long __int___0 ;
  long tmp___11 ;
  bool __cond___1 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  bool __cond___2 ;
  int tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  {
  tmp = video_drvdata(file);
  vc = (struct s2255_vc *)tmp;
  dev = vc->dev;
  rc = 0;
  rc = v4l2_fh_open(file);
  if (rc != 0) {
    return (rc);
  } else {
  }
  if (debug > 0) {
    printk("\017%s: s2255: %s\n", (char *)(& dev->v4l2_dev.name), "s2255_open");
  } else {
  }
  state = atomic_read((atomic_t const *)(& (dev->fw_data)->fw_state));
  switch (state) {
  case 4: ;
  return (-19);
  case 3:
  dev_err((struct device const *)(& (dev->udev)->dev), "s2255 - firmware load failed. retrying.\n");
  s2255_fwload_start(dev, 1);
  tmp___0 = msecs_to_jiffies(5800U);
  __ret = (long )tmp___0;
  __might_sleep("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/6926/dscv_tempdir/dscv/ri/43_2a/drivers/media/usb/s2255/s2255drv.c",
                1459, 0);
  tmp___6 = atomic_read((atomic_t const *)(& (dev->fw_data)->fw_state));
  if (tmp___6 == 2) {
    tmp___8 = 1;
  } else {
    tmp___7 = atomic_read((atomic_t const *)(& (dev->fw_data)->fw_state));
    if (tmp___7 == 4) {
      tmp___8 = 1;
    } else {
      tmp___8 = 0;
    }
  }
  __cond___0 = (bool )tmp___8;
  if ((int )__cond___0 && __ret == 0L) {
    __ret = 1L;
  } else {
  }
  if (((int )__cond___0 || __ret == 0L) == 0) {
    tmp___1 = msecs_to_jiffies(5800U);
    __ret___0 = (long )tmp___1;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    ldv_36897:
    tmp___2 = prepare_to_wait_event(& (dev->fw_data)->wait_fw, & __wait, 2);
    __int = tmp___2;
    tmp___3 = atomic_read((atomic_t const *)(& (dev->fw_data)->fw_state));
    if (tmp___3 == 2) {
      tmp___5 = 1;
    } else {
      tmp___4 = atomic_read((atomic_t const *)(& (dev->fw_data)->fw_state));
      if (tmp___4 == 4) {
        tmp___5 = 1;
      } else {
        tmp___5 = 0;
      }
    }
    __cond = (bool )tmp___5;
    if ((int )__cond && __ret___0 == 0L) {
      __ret___0 = 1L;
    } else {
    }
    if (((int )__cond || __ret___0 == 0L) != 0) {
      goto ldv_36896;
    } else {
    }
    __ret___0 = schedule_timeout(__ret___0);
    goto ldv_36897;
    ldv_36896:
    finish_wait(& (dev->fw_data)->wait_fw, & __wait);
    __ret = __ret___0;
  } else {
  }
  state = atomic_read((atomic_t const *)(& (dev->fw_data)->fw_state));
  goto ldv_36900;
  case 0: ;
  case 1:
  printk("\016%s waiting for firmware load\n", "s2255_open");
  tmp___9 = msecs_to_jiffies(5800U);
  __ret___1 = (long )tmp___9;
  __might_sleep("/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/6926/dscv_tempdir/dscv/ri/43_2a/drivers/media/usb/s2255/s2255drv.c",
                1473, 0);
  tmp___15 = atomic_read((atomic_t const *)(& (dev->fw_data)->fw_state));
  if (tmp___15 == 2) {
    tmp___17 = 1;
  } else {
    tmp___16 = atomic_read((atomic_t const *)(& (dev->fw_data)->fw_state));
    if (tmp___16 == 4) {
      tmp___17 = 1;
    } else {
      tmp___17 = 0;
    }
  }
  __cond___2 = (bool )tmp___17;
  if ((int )__cond___2 && __ret___1 == 0L) {
    __ret___1 = 1L;
  } else {
  }
  if (((int )__cond___2 || __ret___1 == 0L) == 0) {
    tmp___10 = msecs_to_jiffies(5800U);
    __ret___2 = (long )tmp___10;
    INIT_LIST_HEAD(& __wait___0.task_list);
    __wait___0.flags = 0U;
    ldv_36913:
    tmp___11 = prepare_to_wait_event(& (dev->fw_data)->wait_fw, & __wait___0, 2);
    __int___0 = tmp___11;
    tmp___12 = atomic_read((atomic_t const *)(& (dev->fw_data)->fw_state));
    if (tmp___12 == 2) {
      tmp___14 = 1;
    } else {
      tmp___13 = atomic_read((atomic_t const *)(& (dev->fw_data)->fw_state));
      if (tmp___13 == 4) {
        tmp___14 = 1;
      } else {
        tmp___14 = 0;
      }
    }
    __cond___1 = (bool )tmp___14;
    if ((int )__cond___1 && __ret___2 == 0L) {
      __ret___2 = 1L;
    } else {
    }
    if (((int )__cond___1 || __ret___2 == 0L) != 0) {
      goto ldv_36912;
    } else {
    }
    __ret___2 = schedule_timeout(__ret___2);
    goto ldv_36913;
    ldv_36912:
    finish_wait(& (dev->fw_data)->wait_fw, & __wait___0);
    __ret___1 = __ret___2;
  } else {
  }
  state = atomic_read((atomic_t const *)(& (dev->fw_data)->fw_state));
  goto ldv_36900;
  case 2: ;
  default: ;
  goto ldv_36900;
  }
  ldv_36900: ;
  switch (state) {
  case 2: ;
  goto ldv_36919;
  case 3:
  printk("r255 firmware load failed.\n");
  return (-19);
  case 4:
  printk("\016%s: disconnecting\n", "s2255_open");
  return (-19);
  case 1: ;
  case 0:
  printk("\016%s: firmware not loaded, please retry\n", "s2255_open");
  atomic_set(& (dev->fw_data)->fw_state, 3);
  return (-11);
  default:
  printk("\016%s: unknown state\n", "s2255_open");
  return (-14);
  }
  ldv_36919: ;
  if (vc->configured == 0) {
    vc->fmt = (struct s2255_fmt const *)(& formats);
    s2255_set_mode(vc, & vc->mode);
    vc->configured = 1;
  } else {
  }
  return (0);
}
}
static void s2255_destroy(struct s2255_dev *dev )
{
  {
  if (debug > 0) {
    printk("\017%s: %s", (char *)(& dev->v4l2_dev.name), "s2255_destroy");
  } else {
  }
  s2255_board_shutdown(dev);
  ldv_del_timer_sync_26(& dev->timer);
  if ((unsigned long )(dev->fw_data)->fw_urb != (unsigned long )((struct urb *)0)) {
    usb_kill_urb((dev->fw_data)->fw_urb);
    usb_free_urb((dev->fw_data)->fw_urb);
    (dev->fw_data)->fw_urb = (struct urb *)0;
  } else {
  }
  release_firmware((dev->fw_data)->fw);
  kfree((void const *)(dev->fw_data)->pfw_data);
  kfree((void const *)dev->fw_data);
  s2255_reset_dsppower(dev);
  mutex_destroy(& dev->lock);
  usb_put_dev(dev->udev);
  v4l2_device_unregister(& dev->v4l2_dev);
  kfree((void const *)dev->cmdbuf);
  kfree((void const *)dev);
  return;
}
}
static struct v4l2_file_operations const s2255_fops_v4l =
     {& __this_module, & vb2_fop_read, 0, & vb2_fop_poll, & video_ioctl2, 0, 0, & vb2_fop_mmap,
    & s2255_open, & vb2_fop_release};
static struct v4l2_ioctl_ops const s2255_ioctl_ops =
     {& vidioc_querycap, & vidioc_enum_fmt_vid_cap, 0, 0, 0, 0, 0, & vidioc_g_fmt_vid_cap,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & vidioc_s_fmt_vid_cap, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, & vidioc_try_fmt_vid_cap, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & vb2_ioctl_reqbufs,
    & vb2_ioctl_querybuf, & vb2_ioctl_qbuf, 0, & vb2_ioctl_dqbuf, 0, 0, 0, 0, 0, & vb2_ioctl_streamon,
    & vb2_ioctl_streamoff, & vidioc_g_std, & vidioc_s_std, 0, & vidioc_enum_input,
    & vidioc_g_input, & vidioc_s_input, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & vidioc_g_jpegcomp, & vidioc_s_jpegcomp, 0, 0,
    0, 0, 0, & vidioc_g_parm, & vidioc_s_parm, 0, 0, 0, 0, 0, 0, & v4l2_ctrl_log_status,
    0, 0, 0, 0, & vidioc_enum_framesizes, & vidioc_enum_frameintervals, 0, 0, 0, 0,
    0, 0, 0, & v4l2_ctrl_subscribe_event, & v4l2_event_unsubscribe, 0};
static void s2255_video_device_release(struct video_device *vdev )
{
  struct s2255_dev *dev ;
  struct s2255_dev *tmp ;
  struct s2255_vc *vc ;
  struct video_device const *__mptr ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = to_s2255_dev(vdev->v4l2_dev);
  dev = tmp;
  __mptr = (struct video_device const *)vdev;
  vc = (struct s2255_vc *)__mptr + 0xfffffffffffffff8UL;
  if (debug > 3) {
    tmp___0 = atomic_read((atomic_t const *)(& dev->num_channels));
    printk("\017%s: %s, chnls: %d\n", (char *)(& dev->v4l2_dev.name), "s2255_video_device_release",
           tmp___0);
  } else {
  }
  v4l2_ctrl_handler_free(& vc->hdl);
  tmp___1 = atomic_dec_and_test(& dev->num_channels);
  if (tmp___1 != 0) {
    s2255_destroy(dev);
  } else {
  }
  return;
}
}
static struct video_device template =
     {{{0, 0}, 0, 0U, 0, 0U, 0U, 0UL, 0U, (unsigned short)0, (unsigned short)0, (unsigned short)0,
     (unsigned short)0, 0, 0, 0, 0, 0, 0, {{0U, 0U}}}, & s2255_fops_v4l, {0, 0, {0,
                                                                                 {0,
                                                                                  0},
                                                                                 0,
                                                                                 0,
                                                                                 0,
                                                                                 0,
                                                                                 {{0}},
                                                                                 {{{0L},
                                                                                   {0,
                                                                                    0},
                                                                                   0,
                                                                                   {0,
                                                                                    {0,
                                                                                     0},
                                                                                    0,
                                                                                    0,
                                                                                    0UL}},
                                                                                  {{0,
                                                                                    0},
                                                                                   0UL,
                                                                                   0,
                                                                                   0UL,
                                                                                   0U,
                                                                                   0,
                                                                                   0,
                                                                                   0,
                                                                                   {(char)0,
                                                                                    (char)0,
                                                                                    (char)0,
                                                                                    (char)0,
                                                                                    (char)0,
                                                                                    (char)0,
                                                                                    (char)0,
                                                                                    (char)0,
                                                                                    (char)0,
                                                                                    (char)0,
                                                                                    (char)0,
                                                                                    (char)0,
                                                                                    (char)0,
                                                                                    (char)0,
                                                                                    (char)0,
                                                                                    (char)0},
                                                                                   {0,
                                                                                    {0,
                                                                                     0},
                                                                                    0,
                                                                                    0,
                                                                                    0UL}},
                                                                                  0,
                                                                                  0},
                                                                                 (unsigned char)0,
                                                                                 (unsigned char)0,
                                                                                 (unsigned char)0,
                                                                                 (unsigned char)0,
                                                                                 (unsigned char)0},
                                                                          0, 0, {{0},
                                                                                 {{{{{0}},
                                                                                    0U,
                                                                                    0U,
                                                                                    0,
                                                                                    {0,
                                                                                     {0,
                                                                                      0},
                                                                                     0,
                                                                                     0,
                                                                                     0UL}}}},
                                                                                 {0,
                                                                                  0},
                                                                                 0,
                                                                                 0,
                                                                                 {0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0UL}},
                                                                          0, 0, 0,
                                                                          0, {{0},
                                                                              (unsigned char)0,
                                                                              (unsigned char)0,
                                                                              (_Bool)0,
                                                                              (_Bool)0,
                                                                              (_Bool)0,
                                                                              (_Bool)0,
                                                                              (_Bool)0,
                                                                              (_Bool)0,
                                                                              (_Bool)0,
                                                                              {{{{{0}},
                                                                                 0U,
                                                                                 0U,
                                                                                 0,
                                                                                 {0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0UL}}}},
                                                                              {0,
                                                                               0},
                                                                              {0U,
                                                                               {{{{{{0}},
                                                                                   0U,
                                                                                   0U,
                                                                                   0,
                                                                                   {0,
                                                                                    {0,
                                                                                     0},
                                                                                    0,
                                                                                    0,
                                                                                    0UL}}}},
                                                                                {0,
                                                                                 0}}},
                                                                              0, (_Bool)0,
                                                                              (_Bool)0,
                                                                              {{0,
                                                                                0},
                                                                               0UL,
                                                                               0,
                                                                               0UL,
                                                                               0U,
                                                                               0,
                                                                               0,
                                                                               0,
                                                                               {(char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0,
                                                                                (char)0},
                                                                               {0,
                                                                                {0,
                                                                                 0},
                                                                                0,
                                                                                0,
                                                                                0UL}},
                                                                              0UL,
                                                                              {{0L},
                                                                               {0,
                                                                                0},
                                                                               0,
                                                                               {0,
                                                                                {0,
                                                                                 0},
                                                                                0,
                                                                                0,
                                                                                0UL}},
                                                                              {{{{{{0}},
                                                                                  0U,
                                                                                  0U,
                                                                                  0,
                                                                                  {0,
                                                                                   {0,
                                                                                    0},
                                                                                   0,
                                                                                   0,
                                                                                   0UL}}}},
                                                                               {0,
                                                                                0}},
                                                                              0, {0},
                                                                              {0},
                                                                              (unsigned char)0,
                                                                              (unsigned char)0,
                                                                              (unsigned char)0,
                                                                              (unsigned char)0,
                                                                              (unsigned char)0,
                                                                              (unsigned char)0,
                                                                              (unsigned char)0,
                                                                              (unsigned char)0,
                                                                              (unsigned char)0,
                                                                              (unsigned char)0,
                                                                              (unsigned char)0,
                                                                              0, 0,
                                                                              0, 0,
                                                                              0UL,
                                                                              0UL,
                                                                              0UL,
                                                                              0UL,
                                                                              0, 0,
                                                                              0},
                                                                          0, 0, 0,
                                                                          0, 0ULL,
                                                                          0UL, 0,
                                                                          {0, 0},
                                                                          0, 0, {0,
                                                                                 0},
                                                                          0, 0, 0U,
                                                                          0U, {{{{{0}},
                                                                                 0U,
                                                                                 0U,
                                                                                 0,
                                                                                 {0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0UL}}}},
                                                                          {0, 0},
                                                                          {0, {0,
                                                                               0},
                                                                           {{0}}},
                                                                          0, 0, 0,
                                                                          0, (_Bool)0,
                                                                          (_Bool)0},
    0, 0, 0, 0, 0, 0, {'s', '2', '2', '5', '5', 'v', '\000'}, 0, 0, 0, (unsigned short)0,
    0UL, 0, {{{{{0}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}, 0, 16777215ULL,
    & s2255_video_device_release, & s2255_ioctl_ops, {0UL, 0UL, 0UL}, {0UL, 0UL, 0UL},
    0};
static struct v4l2_ctrl_ops const s2255_ctrl_ops = {0, 0, & s2255_s_ctrl};
static struct v4l2_ctrl_config const color_filter_ctrl =
     {& s2255_ctrl_ops, 0, 9967920U, "Color Filter", 2, 0LL, 1LL, 1ULL, 1LL, {0U, 0U,
                                                                            0U, 0U},
    0U, 0U, 0ULL, 0, 0, (unsigned char)0};
static int s2255_probe_v4l(struct s2255_dev *dev )
{
  int ret ;
  int i ;
  int cur_nr ;
  struct s2255_vc *vc ;
  struct vb2_queue *q ;
  struct lock_class_key _key ;
  char const *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  cur_nr = video_nr;
  ret = v4l2_device_register(& (dev->interface)->dev, & dev->v4l2_dev);
  if (ret != 0) {
    return (ret);
  } else {
  }
  i = 0;
  goto ldv_36955;
  ldv_36954:
  vc = (struct s2255_vc *)(& dev->vc) + (unsigned long )i;
  INIT_LIST_HEAD(& vc->buf_list);
  v4l2_ctrl_handler_init_class(& vc->hdl, 6U, & _key, "s2255drv:1633:(&vc->hdl)->_lock");
  v4l2_ctrl_new_std(& vc->hdl, & s2255_ctrl_ops, 9963776U, -127LL, 127LL, 1ULL, 0LL);
  v4l2_ctrl_new_std(& vc->hdl, & s2255_ctrl_ops, 9963777U, 0LL, 255LL, 1ULL, 92LL);
  v4l2_ctrl_new_std(& vc->hdl, & s2255_ctrl_ops, 9963778U, 0LL, 255LL, 1ULL, 128LL);
  v4l2_ctrl_new_std(& vc->hdl, & s2255_ctrl_ops, 9963779U, 0LL, 255LL, 1ULL, 0LL);
  vc->jpegqual_ctrl = v4l2_ctrl_new_std(& vc->hdl, & s2255_ctrl_ops, 10291459U, 0LL,
                                        100LL, 1ULL, 50LL);
  if (dev->dsp_fw_ver > 7 && ((unsigned int )dev->pid != 8791U || vc->idx <= 1)) {
    v4l2_ctrl_new_custom(& vc->hdl, & color_filter_ctrl, (void *)0);
  } else {
  }
  if (vc->hdl.error != 0) {
    ret = vc->hdl.error;
    v4l2_ctrl_handler_free(& vc->hdl);
    dev_err((struct device const *)(& (dev->udev)->dev), "couldn\'t register control\n");
    goto ldv_36952;
  } else {
  }
  q = & vc->vb_vidq;
  q->type = 1;
  q->io_modes = 7U;
  q->drv_priv = (void *)vc;
  q->lock = & vc->vb_lock;
  q->buf_struct_size = 944U;
  q->mem_ops = & vb2_vmalloc_memops;
  q->ops = (struct vb2_ops const *)(& s2255_video_qops);
  q->timestamp_flags = 8192U;
  ret = vb2_queue_init(q);
  if (ret != 0) {
    dev_err((struct device const *)(& (dev->udev)->dev), "%s vb2_queue_init 0x%x\n",
            "s2255_probe_v4l", ret);
    goto ldv_36952;
  } else {
  }
  vc->vdev = template;
  vc->vdev.queue = q;
  vc->vdev.ctrl_handler = & vc->hdl;
  vc->vdev.lock = & dev->lock;
  vc->vdev.v4l2_dev = & dev->v4l2_dev;
  video_set_drvdata(& vc->vdev, (void *)vc);
  if (video_nr == -1) {
    ret = video_register_device(& vc->vdev, 0, video_nr);
  } else {
    ret = video_register_device(& vc->vdev, 0, cur_nr + i);
  }
  if (ret != 0) {
    dev_err((struct device const *)(& (dev->udev)->dev), "failed to register video device!\n");
    goto ldv_36952;
  } else {
  }
  atomic_inc(& dev->num_channels);
  tmp = video_device_node_name(& vc->vdev);
  printk("\016%s: V4L2 device registered as %s\n", (char *)(& dev->v4l2_dev.name),
         tmp);
  i = i + 1;
  ldv_36955: ;
  if (i <= 3) {
    goto ldv_36954;
  } else {
  }
  ldv_36952:
  printk("\016Sensoray 2255 V4L driver Revision: %s\n", (char *)"1.25.1");
  tmp___0 = atomic_read((atomic_t const *)(& dev->num_channels));
  if (tmp___0 == 0) {
    v4l2_device_unregister(& dev->v4l2_dev);
    return (ret);
  } else {
  }
  tmp___1 = atomic_read((atomic_t const *)(& dev->num_channels));
  if (tmp___1 != 4) {
    printk("\fs2255: Not all channels available.\n");
  } else {
  }
  return (0);
}
}
static int save_frame(struct s2255_dev *dev , struct s2255_pipeinfo *pipe_info )
{
  char *pdest ;
  u32 offset ;
  int bframe ;
  char *psrc ;
  unsigned long copy_size ;
  unsigned long size ;
  s32 idx ;
  struct s2255_framei *frm ;
  unsigned char *pdata ;
  struct s2255_vc *vc ;
  int jj ;
  unsigned int cc ;
  __le32 *pdword ;
  int payload ;
  bool tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  {
  offset = 0U;
  bframe = 0;
  idx = -1;
  if (debug > 99) {
    printk("\017%s: buffer to user\n", (char *)(& dev->v4l2_dev.name));
  } else {
  }
  vc = (struct s2255_vc *)(& dev->vc) + (unsigned long )dev->cc;
  idx = vc->cur_frame;
  frm = (struct s2255_framei *)(& vc->buffer.frame) + (unsigned long )idx;
  if (frm->ulState == 0UL) {
    pdata = pipe_info->transfer_buffer;
    pdword = (__le32 *)pdata;
    jj = 0;
    goto ldv_36985;
    ldv_36984: ;
    switch (*pdword) {
    case 576051786U: ;
    if (debug > 3) {
      printk("\017%s: marker @ offset: %d [%x %x]\n", (char *)(& dev->v4l2_dev.name),
             jj, (int )*pdata, (int )*(pdata + 1UL));
    } else {
    }
    offset = (u32 )(jj + 512);
    bframe = 1;
    cc = *(pdword + 1UL);
    if (cc > 3U) {
      if (debug >= 0) {
        printk("\017%s: bad channel\n", (char *)(& dev->v4l2_dev.name));
      } else {
      }
      return (-22);
    } else {
    }
    dev->cc = (u32 )G_chnmap[cc];
    vc = (struct s2255_vc *)(& dev->vc) + (unsigned long )dev->cc;
    payload = (int )*(pdword + 3UL);
    if ((unsigned long )payload > vc->req_image_size) {
      vc->bad_payload = vc->bad_payload + 1;
      return (-22);
    } else {
    }
    vc->pkt_size = (unsigned long )payload;
    vc->jpg_size = (int )*(pdword + 4UL);
    goto ldv_36975;
    case 576040108U:
    pdata = pdata + 16384UL;
    jj = jj + 16384;
    if (*(pdword + 1UL) > 3U) {
      goto ldv_36975;
    } else {
    }
    cc = (unsigned int )G_chnmap[*(pdword + 1UL)];
    if (cc > 3U) {
      goto ldv_36975;
    } else {
    }
    vc = (struct s2255_vc *)(& dev->vc) + (unsigned long )cc;
    switch (*(pdword + 2UL)) {
    case 1U:
    vc->setmode_ready = 1;
    __wake_up(& vc->wait_setmode, 3U, 1, (void *)0);
    if (debug > 4) {
      printk("\017%s: setmode rdy %d\n", (char *)(& dev->v4l2_dev.name), cc);
    } else {
    }
    goto ldv_36978;
    case 16U:
    dev->chn_ready = dev->chn_ready | (1 << (int )cc);
    if ((dev->chn_ready & 15) != 15) {
      goto ldv_36978;
    } else {
    }
    printk("\016s2255: fw loaded\n");
    atomic_set(& (dev->fw_data)->fw_state, 2);
    __wake_up(& (dev->fw_data)->wait_fw, 3U, 1, (void *)0);
    goto ldv_36978;
    case 32U:
    vc->vidstatus = (int )*(pdword + 3UL);
    vc->vidstatus_ready = 1;
    __wake_up(& vc->wait_vidstatus, 3U, 1, (void *)0);
    if (debug > 4) {
      printk("\017%s: vstat %x chan %d\n", (char *)(& dev->v4l2_dev.name), *(pdword + 3UL),
             cc);
    } else {
    }
    goto ldv_36978;
    default:
    printk("\016s2255 unknown resp\n");
    }
    ldv_36978: ;
    default:
    pdata = pdata + 1;
    goto ldv_36975;
    }
    ldv_36975: ;
    if (bframe != 0) {
      goto ldv_36983;
    } else {
    }
    jj = jj + 1;
    ldv_36985: ;
    if ((u32 )jj < pipe_info->cur_transfer_size - 12U) {
      goto ldv_36984;
    } else {
    }
    ldv_36983: ;
    if (bframe == 0) {
      return (-22);
    } else {
    }
  } else {
  }
  vc = (struct s2255_vc *)(& dev->vc) + (unsigned long )dev->cc;
  idx = vc->cur_frame;
  frm = (struct s2255_framei *)(& vc->buffer.frame) + (unsigned long )idx;
  tmp = vb2_is_streaming(& vc->vb_vidq);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    frm->ulState = 0UL;
    return (-22);
  } else {
  }
  if (frm->ulState == 0UL) {
    frm->ulState = 1UL;
    frm->cur_size = 0UL;
  } else {
  }
  psrc = (char *)pipe_info->transfer_buffer + (unsigned long )offset;
  if ((unsigned long )frm->lpvbits == (unsigned long )((void *)0)) {
    if (debug > 0) {
      printk("\017%s: s2255 frame buffer == NULL.%p %p %d %d", (char *)(& dev->v4l2_dev.name),
             frm, dev, dev->cc, idx);
    } else {
    }
    return (-12);
  } else {
  }
  pdest = (char *)(frm->lpvbits + frm->cur_size);
  copy_size = (unsigned long )(pipe_info->cur_transfer_size - offset);
  size = vc->pkt_size - 512UL;
  if (frm->cur_size + copy_size < vc->req_image_size) {
    memcpy_guard((void *)pdest, (void const *)psrc, copy_size);
    memcpy((void *)pdest, (void const *)psrc, copy_size);
  } else {
  }
  frm->cur_size = frm->cur_size + copy_size;
  if (debug > 3) {
    printk("\017%s: cur_size: %lu, size: %lu\n", (char *)(& dev->v4l2_dev.name), frm->cur_size,
           size);
  } else {
  }
  if (frm->cur_size >= size) {
    if (debug > 1) {
      printk("\017%s: ******[%d]Buffer[%d]full*******\n", (char *)(& dev->v4l2_dev.name),
             dev->cc, idx);
    } else {
    }
    vc->last_frame = vc->cur_frame;
    vc->cur_frame = vc->cur_frame + 1;
    if (vc->cur_frame == 4 || (unsigned long )vc->cur_frame == vc->buffer.dwFrames) {
      vc->cur_frame = 0;
    } else {
    }
    tmp___1 = vb2_is_streaming(& vc->vb_vidq);
    if ((int )tmp___1) {
      s2255_got_frame(vc, vc->jpg_size);
    } else {
    }
    vc->frame_count = vc->frame_count + 1UL;
    frm->ulState = 0UL;
    frm->cur_size = 0UL;
  } else {
  }
  return (0);
}
}
static void s2255_read_video_callback(struct s2255_dev *dev , struct s2255_pipeinfo *pipe_info )
{
  int res ;
  {
  if (debug > 49) {
    printk("\017%s: callback read video\n", (char *)(& dev->v4l2_dev.name));
  } else {
  }
  if (dev->cc > 3U) {
    dev->cc = 0U;
    dev_err((struct device const *)(& (dev->udev)->dev), "invalid channel\n");
    return;
  } else {
  }
  res = save_frame(dev, pipe_info);
  if (res != 0) {
    if (debug > 3) {
      printk("\017%s: s2255: read callback failed\n", (char *)(& dev->v4l2_dev.name));
    } else {
    }
  } else {
  }
  if (debug > 49) {
    printk("\017%s: callback read video done\n", (char *)(& dev->v4l2_dev.name));
  } else {
  }
  return;
}
}
static long s2255_vendor_req(struct s2255_dev *dev , unsigned char Request , u16 Index ,
                             u16 Value , void *TransferBuffer , s32 TransferBufferLength ,
                             int bOut )
{
  int r ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  if (bOut == 0) {
    tmp = __create_pipe(dev->udev, 0U);
    r = usb_control_msg(dev->udev, tmp | 2147483776U, (int )Request, 192, (int )Value,
                        (int )Index, TransferBuffer, (int )((__u16 )TransferBufferLength),
                        1250);
  } else {
    tmp___0 = __create_pipe(dev->udev, 0U);
    r = usb_control_msg(dev->udev, tmp___0 | 2147483648U, (int )Request, 64, (int )Value,
                        (int )Index, TransferBuffer, (int )((__u16 )TransferBufferLength),
                        1250);
  }
  return ((long )r);
}
}
static int s2255_get_fx2fw(struct s2255_dev *dev )
{
  int fw ;
  int ret ;
  unsigned char transBuffer[64U] ;
  long tmp ;
  {
  tmp = s2255_vendor_req(dev, 48, 0, 0, (void *)(& transBuffer), 2, 0);
  ret = (int )tmp;
  if (ret < 0) {
    if (debug > 1) {
      printk("\017%s: get fw error: %x\n", (char *)(& dev->v4l2_dev.name), ret);
    } else {
    }
  } else {
  }
  fw = (int )transBuffer[0] + ((int )transBuffer[1] << 8);
  if (debug > 1) {
    printk("\017%s: Get FW %x %x\n", (char *)(& dev->v4l2_dev.name), (int )transBuffer[0],
           (int )transBuffer[1]);
  } else {
  }
  return (fw);
}
}
static int s2255_create_sys_buffers(struct s2255_vc *vc )
{
  unsigned long i ;
  unsigned long reqsize ;
  {
  vc->buffer.dwFrames = 4UL;
  reqsize = 833536UL;
  if (reqsize > 833536UL) {
    reqsize = 833536UL;
  } else {
  }
  i = 0UL;
  goto ldv_37014;
  ldv_37013:
  vc->buffer.frame[i].lpvbits = ldv_vmalloc_27(reqsize);
  vc->buffer.frame[i].size = reqsize;
  if ((unsigned long )vc->buffer.frame[i].lpvbits == (unsigned long )((void *)0)) {
    printk("\016out of memory.  using less frames\n");
    vc->buffer.dwFrames = i;
    goto ldv_37012;
  } else {
  }
  i = i + 1UL;
  ldv_37014: ;
  if (i <= 3UL) {
    goto ldv_37013;
  } else {
  }
  ldv_37012:
  i = 0UL;
  goto ldv_37016;
  ldv_37015:
  vc->buffer.frame[i].ulState = 0UL;
  vc->buffer.frame[i].cur_size = 0UL;
  i = i + 1UL;
  ldv_37016: ;
  if (i <= 3UL) {
    goto ldv_37015;
  } else {
  }
  vc->cur_frame = 0;
  vc->last_frame = -1;
  return (0);
}
}
static int s2255_release_sys_buffers(struct s2255_vc *vc )
{
  unsigned long i ;
  {
  i = 0UL;
  goto ldv_37023;
  ldv_37022:
  vfree((void const *)vc->buffer.frame[i].lpvbits);
  vc->buffer.frame[i].lpvbits = (void *)0;
  i = i + 1UL;
  ldv_37023: ;
  if (i <= 3UL) {
    goto ldv_37022;
  } else {
  }
  return (0);
}
}
static int s2255_board_init(struct s2255_dev *dev )
{
  struct s2255_mode mode_def ;
  int fw_ver ;
  int j ;
  struct s2255_pipeinfo *pipe ;
  void *tmp ;
  struct s2255_vc *vc ;
  u32 tmp___0 ;
  {
  mode_def.format = 1U;
  mode_def.scale = 1U;
  mode_def.color = 1U;
  mode_def.fdec = 1U;
  mode_def.bright = 0U;
  mode_def.contrast = 92U;
  mode_def.saturation = 128U;
  mode_def.hue = 0U;
  mode_def.single = 0U;
  mode_def.usb_block = 16384U;
  mode_def.restart = 0U;
  pipe = & dev->pipe;
  if (debug > 3) {
    printk("\017%s: board init: %p", (char *)(& dev->v4l2_dev.name), dev);
  } else {
  }
  memset((void *)pipe, 0, 48UL);
  pipe->dev = (void *)dev;
  pipe->cur_transfer_size = 16384U;
  pipe->max_transfer_size = 16384U;
  tmp = kzalloc((size_t )pipe->max_transfer_size, 208U);
  pipe->transfer_buffer = (u8 *)tmp;
  if ((unsigned long )pipe->transfer_buffer == (unsigned long )((u8 *)0U)) {
    if (debug > 0) {
      printk("\017%s: out of memory!\n", (char *)(& dev->v4l2_dev.name));
    } else {
    }
    return (-12);
  } else {
  }
  fw_ver = s2255_get_fx2fw(dev);
  printk("\016s2255: usb firmware version %d.%d\n", (fw_ver >> 8) & 255, fw_ver & 255);
  if (fw_ver <= 779) {
    printk("\016s2255: newer USB firmware available\n");
  } else {
  }
  j = 0;
  goto ldv_37034;
  ldv_37033:
  vc = (struct s2255_vc *)(& dev->vc) + (unsigned long )j;
  vc->mode = mode_def;
  if ((unsigned int )dev->pid == 8791U && j > 1) {
    vc->mode.color = vc->mode.color | 65536U;
  } else {
  }
  vc->jpegqual = 50U;
  vc->width = 640U;
  vc->height = 480U;
  vc->std = 4096ULL;
  vc->fmt = (struct s2255_fmt const *)(& formats);
  vc->mode.restart = 1U;
  tmp___0 = get_transfer_size(& mode_def);
  vc->req_image_size = (unsigned long )tmp___0;
  vc->frame_count = 0UL;
  s2255_create_sys_buffers(vc);
  j = j + 1;
  ldv_37034: ;
  if (j <= 3) {
    goto ldv_37033;
  } else {
  }
  s2255_start_readpipe(dev);
  if (debug > 0) {
    printk("\017%s: %s: success\n", (char *)(& dev->v4l2_dev.name), "s2255_board_init");
  } else {
  }
  return (0);
}
}
static int s2255_board_shutdown(struct s2255_dev *dev )
{
  u32 i ;
  bool tmp ;
  {
  if (debug > 0) {
    printk("\017%s: %s: dev: %p", (char *)(& dev->v4l2_dev.name), "s2255_board_shutdown",
           dev);
  } else {
  }
  i = 0U;
  goto ldv_37043;
  ldv_37042:
  tmp = vb2_is_streaming(& dev->vc[i].vb_vidq);
  if ((int )tmp) {
    s2255_stop_acquire((struct s2255_vc *)(& dev->vc) + (unsigned long )i);
  } else {
  }
  i = i + 1U;
  ldv_37043: ;
  if (i <= 3U) {
    goto ldv_37042;
  } else {
  }
  s2255_stop_readpipe(dev);
  i = 0U;
  goto ldv_37046;
  ldv_37045:
  s2255_release_sys_buffers((struct s2255_vc *)(& dev->vc) + (unsigned long )i);
  i = i + 1U;
  ldv_37046: ;
  if (i <= 3U) {
    goto ldv_37045;
  } else {
  }
  kfree((void const *)dev->pipe.transfer_buffer);
  return (0);
}
}
static void read_pipe_completion(struct urb *purb )
{
  struct s2255_pipeinfo *pipe_info ;
  struct s2255_dev *dev ;
  int status ;
  int pipe ;
  unsigned int tmp ;
  int tmp___0 ;
  {
  pipe_info = (struct s2255_pipeinfo *)purb->context;
  if ((unsigned long )pipe_info == (unsigned long )((struct s2255_pipeinfo *)0)) {
    dev_err((struct device const *)(& (purb->dev)->dev), "no context!\n");
    return;
  } else {
  }
  dev = (struct s2255_dev *)pipe_info->dev;
  if ((unsigned long )dev == (unsigned long )((struct s2255_dev *)0)) {
    dev_err((struct device const *)(& (purb->dev)->dev), "no context!\n");
    return;
  } else {
  }
  status = purb->status;
  if (status == -108) {
    if (debug > 1) {
      printk("\017%s: %s: err shutdown\n", (char *)(& dev->v4l2_dev.name), "read_pipe_completion");
    } else {
    }
    pipe_info->err_count = pipe_info->err_count + 1U;
    return;
  } else {
  }
  if (pipe_info->state == 0U) {
    if (debug > 1) {
      printk("\017%s: %s: exiting USB pipe", (char *)(& dev->v4l2_dev.name), "read_pipe_completion");
    } else {
    }
    return;
  } else {
  }
  if (status == 0) {
    s2255_read_video_callback(dev, pipe_info);
  } else {
    pipe_info->err_count = pipe_info->err_count + 1U;
    if (debug > 0) {
      printk("\017%s: %s: failed URB %d\n", (char *)(& dev->v4l2_dev.name), "read_pipe_completion",
             status);
    } else {
    }
  }
  tmp = __create_pipe(dev->udev, (unsigned int )dev->read_endpoint);
  pipe = (int )(tmp | 3221225600U);
  usb_fill_bulk_urb((struct urb *)pipe_info->stream_urb, dev->udev, (unsigned int )pipe,
                    (void *)pipe_info->transfer_buffer, (int )pipe_info->cur_transfer_size,
                    & read_pipe_completion, (void *)pipe_info);
  if (pipe_info->state != 0U) {
    tmp___0 = ldv_usb_submit_urb_28((struct urb *)pipe_info->stream_urb, 32U);
    if (tmp___0 != 0) {
      dev_err((struct device const *)(& (dev->udev)->dev), "error submitting urb\n");
    } else {
    }
  } else
  if (debug > 1) {
    printk("\017%s: %s :complete state 0\n", (char *)(& dev->v4l2_dev.name), "read_pipe_completion");
  } else {
  }
  return;
}
}
static int s2255_start_readpipe(struct s2255_dev *dev )
{
  int pipe ;
  int retval ;
  struct s2255_pipeinfo *pipe_info ;
  unsigned int tmp ;
  struct urb *tmp___0 ;
  {
  pipe_info = & dev->pipe;
  tmp = __create_pipe(dev->udev, (unsigned int )dev->read_endpoint);
  pipe = (int )(tmp | 3221225600U);
  if (debug > 1) {
    printk("\017%s: %s: IN %d\n", (char *)(& dev->v4l2_dev.name), "s2255_start_readpipe",
           (int )dev->read_endpoint);
  } else {
  }
  pipe_info->state = 1U;
  pipe_info->err_count = 0U;
  tmp___0 = ldv_usb_alloc_urb_29(0, 208U);
  pipe_info->stream_urb = (void *)tmp___0;
  if ((unsigned long )pipe_info->stream_urb == (unsigned long )((void *)0)) {
    dev_err((struct device const *)(& (dev->udev)->dev), "ReadStream: Unable to alloc URB\n");
    return (-12);
  } else {
  }
  usb_fill_bulk_urb((struct urb *)pipe_info->stream_urb, dev->udev, (unsigned int )pipe,
                    (void *)pipe_info->transfer_buffer, (int )pipe_info->cur_transfer_size,
                    & read_pipe_completion, (void *)pipe_info);
  retval = ldv_usb_submit_urb_30((struct urb *)pipe_info->stream_urb, 208U);
  if (retval != 0) {
    printk("\vs2255: start read pipe failed\n");
    return (retval);
  } else {
  }
  return (0);
}
}
static int s2255_start_acquire(struct s2255_vc *vc )
{
  int res ;
  unsigned long chn_rev ;
  int j ;
  struct s2255_dev *dev ;
  struct s2255_dev *tmp ;
  __le32 *buffer ;
  {
  tmp = to_s2255_dev(vc->vdev.v4l2_dev);
  dev = tmp;
  buffer = dev->cmdbuf;
  mutex_lock_nested(& dev->cmdlock, 0U);
  chn_rev = G_chnmap[vc->idx];
  vc->last_frame = -1;
  vc->bad_payload = 0;
  vc->cur_frame = 0;
  j = 0;
  goto ldv_37072;
  ldv_37071:
  vc->buffer.frame[j].ulState = 0UL;
  vc->buffer.frame[j].cur_size = 0UL;
  j = j + 1;
  ldv_37072: ;
  if (j <= 3) {
    goto ldv_37071;
  } else {
  }
  *buffer = 576045278U;
  *(buffer + 1UL) = (unsigned int )chn_rev;
  *(buffer + 2UL) = 3257225248U;
  res = s2255_write_config(dev->udev, (unsigned char *)buffer, 512);
  if (res != 0) {
    dev_err((struct device const *)(& (dev->udev)->dev), "CMD_START error\n");
  } else {
  }
  if (debug > 1) {
    printk("\017%s: start acquire exit[%d] %d\n", (char *)(& dev->v4l2_dev.name),
           vc->idx, res);
  } else {
  }
  mutex_unlock(& dev->cmdlock);
  return (res);
}
}
static int s2255_stop_acquire(struct s2255_vc *vc )
{
  int res ;
  unsigned long chn_rev ;
  struct s2255_dev *dev ;
  struct s2255_dev *tmp ;
  __le32 *buffer ;
  {
  tmp = to_s2255_dev(vc->vdev.v4l2_dev);
  dev = tmp;
  buffer = dev->cmdbuf;
  mutex_lock_nested(& dev->cmdlock, 0U);
  chn_rev = G_chnmap[vc->idx];
  *buffer = 576045278U;
  *(buffer + 1UL) = (unsigned int )chn_rev;
  *(buffer + 2UL) = 3257225264U;
  res = s2255_write_config(dev->udev, (unsigned char *)buffer, 512);
  if (res != 0) {
    dev_err((struct device const *)(& (dev->udev)->dev), "CMD_STOP error\n");
  } else {
  }
  if (debug > 3) {
    printk("\017%s: %s: chn %d, res %d\n", (char *)(& dev->v4l2_dev.name), "s2255_stop_acquire",
           vc->idx, res);
  } else {
  }
  mutex_unlock(& dev->cmdlock);
  return (res);
}
}
static void s2255_stop_readpipe(struct s2255_dev *dev )
{
  struct s2255_pipeinfo *pipe ;
  {
  pipe = & dev->pipe;
  pipe->state = 0U;
  if ((unsigned long )pipe->stream_urb != (unsigned long )((void *)0)) {
    usb_kill_urb((struct urb *)pipe->stream_urb);
    usb_free_urb((struct urb *)pipe->stream_urb);
    pipe->stream_urb = (void *)0;
  } else {
  }
  if (debug > 3) {
    printk("\017%s: %s", (char *)(& dev->v4l2_dev.name), "s2255_stop_readpipe");
  } else {
  }
  return;
}
}
static void s2255_fwload_start(struct s2255_dev *dev , int reset )
{
  unsigned int tmp ;
  {
  if (reset != 0) {
    s2255_reset_dsppower(dev);
  } else {
  }
  (dev->fw_data)->fw_size = (int )((dev->fw_data)->fw)->size;
  atomic_set(& (dev->fw_data)->fw_state, 0);
  memcpy_guard((dev->fw_data)->pfw_data, (void const *)((dev->fw_data)->fw)->data, 512UL);
  memcpy((dev->fw_data)->pfw_data, (void const *)((dev->fw_data)->fw)->data, 512UL);
  (dev->fw_data)->fw_loaded = 512;
  tmp = __create_pipe(dev->udev, 2U);
  usb_fill_bulk_urb((dev->fw_data)->fw_urb, dev->udev, tmp | 3221225472U, (dev->fw_data)->pfw_data,
                    512, & s2255_fwchunk_complete, (void *)dev->fw_data);
  ldv_mod_timer_31(& dev->timer, (unsigned long )jiffies + 250UL);
  return;
}
}
static int s2255_probe(struct usb_interface *interface , struct usb_device_id const *id )
{
  struct s2255_dev *dev ;
  struct usb_host_interface *iface_desc ;
  struct usb_endpoint_descriptor *endpoint ;
  int i ;
  int retval ;
  __le32 *pdata ;
  int fw_size ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct usb_device *tmp___2 ;
  struct _ddebug descriptor ;
  long tmp___3 ;
  struct _ddebug descriptor___0 ;
  long tmp___4 ;
  int tmp___5 ;
  struct lock_class_key __key___1 ;
  struct s2255_vc *vc ;
  struct lock_class_key __key___2 ;
  struct lock_class_key __key___3 ;
  struct lock_class_key __key___4 ;
  struct lock_class_key __key___5 ;
  int tmp___6 ;
  __le32 *pRel ;
  {
  dev = (struct s2255_dev *)0;
  retval = -12;
  tmp = kzalloc(15544UL, 208U);
  dev = (struct s2255_dev *)tmp;
  if ((unsigned long )dev == (unsigned long )((struct s2255_dev *)0)) {
    dev_err((struct device const *)(& interface->dev), "s2255 - out of memory\n");
    return (-12);
  } else {
  }
  tmp___0 = kzalloc(512UL, 208U);
  dev->cmdbuf = (__le32 *)tmp___0;
  if ((unsigned long )dev->cmdbuf == (unsigned long )((__le32 *)0U)) {
    dev_err((struct device const *)(& interface->dev), "s2255 - out of memory\n");
    goto errorFWDATA1;
  } else {
  }
  atomic_set(& dev->num_channels, 0);
  dev->pid = id->idProduct;
  tmp___1 = kzalloc(128UL, 208U);
  dev->fw_data = (struct s2255_fw *)tmp___1;
  if ((unsigned long )dev->fw_data == (unsigned long )((struct s2255_fw *)0)) {
    goto errorFWDATA1;
  } else {
  }
  __mutex_init(& dev->lock, "&dev->lock", & __key);
  __mutex_init(& dev->cmdlock, "&dev->cmdlock", & __key___0);
  tmp___2 = interface_to_usbdev(interface);
  dev->udev = usb_get_dev(tmp___2);
  if ((unsigned long )dev->udev == (unsigned long )((struct usb_device *)0)) {
    dev_err((struct device const *)(& interface->dev), "null usb device\n");
    retval = -19;
    goto errorUDEV;
  } else {
  }
  descriptor.modname = "s2255drv";
  descriptor.function = "s2255_probe";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/6926/dscv_tempdir/dscv/ri/43_2a/drivers/media/usb/s2255/s2255drv.c";
  descriptor.format = "dev: %p, udev %p interface %p\n";
  descriptor.lineno = 2259U;
  descriptor.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& interface->dev), "dev: %p, udev %p interface %p\n",
                      dev, dev->udev, interface);
  } else {
  }
  dev->interface = interface;
  iface_desc = interface->cur_altsetting;
  descriptor___0.modname = "s2255drv";
  descriptor___0.function = "s2255_probe";
  descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/6926/dscv_tempdir/dscv/ri/43_2a/drivers/media/usb/s2255/s2255drv.c";
  descriptor___0.format = "num EP: %d\n";
  descriptor___0.lineno = 2264U;
  descriptor___0.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___4 != 0L) {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& interface->dev),
                      "num EP: %d\n", (int )iface_desc->desc.bNumEndpoints);
  } else {
  }
  i = 0;
  goto ldv_37110;
  ldv_37109:
  endpoint = & (iface_desc->endpoint + (unsigned long )i)->desc;
  if ((unsigned int )dev->read_endpoint == 0U) {
    tmp___5 = usb_endpoint_is_bulk_in((struct usb_endpoint_descriptor const *)endpoint);
    if (tmp___5 != 0) {
      dev->read_endpoint = endpoint->bEndpointAddress;
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_37110: ;
  if ((int )iface_desc->desc.bNumEndpoints > i) {
    goto ldv_37109;
  } else {
  }
  if ((unsigned int )dev->read_endpoint == 0U) {
    dev_err((struct device const *)(& interface->dev), "Could not find bulk-in endpoint\n");
    goto errorEP;
  } else {
  }
  reg_timer_1(& dev->timer, & s2255_timer, (unsigned long )dev->fw_data);
  __init_waitqueue_head(& (dev->fw_data)->wait_fw, "&dev->fw_data->wait_fw", & __key___1);
  i = 0;
  goto ldv_37120;
  ldv_37119:
  vc = (struct s2255_vc *)(& dev->vc) + (unsigned long )i;
  vc->idx = i;
  vc->dev = dev;
  __init_waitqueue_head(& vc->wait_setmode, "&vc->wait_setmode", & __key___2);
  __init_waitqueue_head(& vc->wait_vidstatus, "&vc->wait_vidstatus", & __key___3);
  spinlock_check(& vc->qlock);
  __raw_spin_lock_init(& vc->qlock.__annonCompField18.rlock, "&(&vc->qlock)->rlock",
                       & __key___4);
  __mutex_init(& vc->vb_lock, "&vc->vb_lock", & __key___5);
  i = i + 1;
  ldv_37120: ;
  if (i <= 3) {
    goto ldv_37119;
  } else {
  }
  (dev->fw_data)->fw_urb = ldv_usb_alloc_urb_32(0, 208U);
  if ((unsigned long )(dev->fw_data)->fw_urb == (unsigned long )((struct urb *)0)) {
    dev_err((struct device const *)(& interface->dev), "out of memory!\n");
    goto errorFWURB;
  } else {
  }
  (dev->fw_data)->pfw_data = kzalloc(512UL, 208U);
  if ((unsigned long )(dev->fw_data)->pfw_data == (unsigned long )((void *)0)) {
    dev_err((struct device const *)(& interface->dev), "out of memory!\n");
    goto errorFWDATA2;
  } else {
  }
  tmp___6 = request_firmware(& (dev->fw_data)->fw, "f2255usb.bin", & (dev->udev)->dev);
  if (tmp___6 != 0) {
    dev_err((struct device const *)(& interface->dev), "sensoray 2255 failed to get firmware\n");
    goto errorREQFW;
  } else {
  }
  fw_size = (int )((dev->fw_data)->fw)->size;
  pdata = (__le32 *)(((dev->fw_data)->fw)->data + ((unsigned long )fw_size + 0xfffffffffffffff8UL));
  if (*pdata != 576007983U) {
    dev_err((struct device const *)(& interface->dev), "Firmware invalid.\n");
    retval = -19;
    goto errorFWMARKER;
  } else {
    pRel = (__le32 *)(((dev->fw_data)->fw)->data + ((unsigned long )fw_size + 0xfffffffffffffffcUL));
    printk("\016s2255 dsp fw version %x\n", *pRel);
    dev->dsp_fw_ver = (int )*pRel;
    if (dev->dsp_fw_ver <= 10103) {
      printk("\016s2255: f2255usb.bin out of date.\n");
    } else {
    }
    if ((unsigned int )dev->pid == 8791U && dev->dsp_fw_ver <= 7) {
      printk("b257 needs firmware %d or above.\n", 8);
    } else {
    }
  }
  usb_reset_device(dev->udev);
  retval = s2255_board_init(dev);
  if (retval != 0) {
    goto errorBOARDINIT;
  } else {
  }
  s2255_fwload_start(dev, 0);
  retval = s2255_probe_v4l(dev);
  if (retval != 0) {
    goto errorBOARDINIT;
  } else {
  }
  _dev_info((struct device const *)(& interface->dev), "Sensoray 2255 detected\n");
  return (0);
  errorBOARDINIT:
  s2255_board_shutdown(dev);
  errorFWMARKER:
  release_firmware((dev->fw_data)->fw);
  errorREQFW:
  kfree((void const *)(dev->fw_data)->pfw_data);
  errorFWDATA2:
  usb_free_urb((dev->fw_data)->fw_urb);
  errorFWURB:
  ldv_del_timer_sync_33(& dev->timer);
  errorEP:
  usb_put_dev(dev->udev);
  errorUDEV:
  kfree((void const *)dev->fw_data);
  mutex_destroy(& dev->lock);
  errorFWDATA1:
  kfree((void const *)dev->cmdbuf);
  kfree((void const *)dev);
  printk("\fSensoray 2255 driver load failed: 0x%x\n", retval);
  return (retval);
}
}
static void s2255_disconnect(struct usb_interface *interface )
{
  struct s2255_dev *dev ;
  void *tmp ;
  struct s2255_dev *tmp___0 ;
  int i ;
  int channels ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = usb_get_intfdata(interface);
  tmp___0 = to_s2255_dev((struct v4l2_device *)tmp);
  dev = tmp___0;
  tmp___1 = atomic_read((atomic_t const *)(& dev->num_channels));
  channels = tmp___1;
  mutex_lock_nested(& dev->lock, 0U);
  v4l2_device_disconnect(& dev->v4l2_dev);
  mutex_unlock(& dev->lock);
  atomic_inc(& dev->num_channels);
  i = 0;
  goto ldv_37135;
  ldv_37134:
  video_unregister_device(& dev->vc[i].vdev);
  i = i + 1;
  ldv_37135: ;
  if (i < channels) {
    goto ldv_37134;
  } else {
  }
  atomic_set(& (dev->fw_data)->fw_state, 4);
  __wake_up(& (dev->fw_data)->wait_fw, 3U, 1, (void *)0);
  i = 0;
  goto ldv_37138;
  ldv_37137:
  dev->vc[i].setmode_ready = 1;
  __wake_up(& dev->vc[i].wait_setmode, 3U, 1, (void *)0);
  dev->vc[i].vidstatus_ready = 1;
  __wake_up(& dev->vc[i].wait_vidstatus, 3U, 1, (void *)0);
  i = i + 1;
  ldv_37138: ;
  if (i <= 3) {
    goto ldv_37137;
  } else {
  }
  tmp___2 = atomic_dec_and_test(& dev->num_channels);
  if (tmp___2 != 0) {
    s2255_destroy(dev);
  } else {
  }
  _dev_info((struct device const *)(& interface->dev), "%s\n", "s2255_disconnect");
  return;
}
}
static struct usb_driver s2255_driver =
     {"s2255", & s2255_probe, & s2255_disconnect, 0, 0, 0, 0, 0, 0, (struct usb_device_id const *)(& s2255_table),
    {{{{{{0}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}}, {{0, 0, 0, 0, (_Bool)0,
                                                                0, 0, 0, 0, 0, 0,
                                                                0, 0, 0, 0, 0}, 0},
    (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0};
static int s2255_driver_init(void)
{
  int tmp ;
  {
  tmp = ldv_usb_register_driver_34(& s2255_driver, & __this_module, "s2255drv");
  return (tmp);
}
}
static void s2255_driver_exit(void)
{
  {
  ldv_usb_deregister_35(& s2255_driver);
  return;
}
}
int ldv_retval_0 ;
extern int ldv_probe_4(void) ;
int ldv_retval_1 ;
extern void ldv_initialize(void) ;
extern void ldv_check_final_state(void) ;
int ldv_retval_2 ;
void timer_init_1(void)
{
  {
  ldv_timer_1_0 = 0;
  ldv_timer_1_1 = 0;
  ldv_timer_1_2 = 0;
  ldv_timer_1_3 = 0;
  return;
}
}
void ldv_usb_driver_2(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(1560UL);
  s2255_driver_group1 = (struct usb_interface *)tmp;
  return;
}
}
int reg_timer_1(struct timer_list *timer , void (*function)(unsigned long ) , unsigned long data )
{
  {
  if ((unsigned long )function == (unsigned long )(& s2255_timer)) {
    activate_suitable_timer_1(timer, data);
  } else {
  }
  return (0);
}
}
void ldv_initialize_v4l2_file_operations_6(void)
{
  {
  s2255_fops_v4l_group0 = ldv_malloc(sizeof(struct file));
  return;
}
}
void disable_suitable_timer_1(struct timer_list *timer )
{
  {
  if (ldv_timer_1_0 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_1_0) {
    ldv_timer_1_0 = 0;
    return;
  } else {
  }
  if (ldv_timer_1_1 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_1_1) {
    ldv_timer_1_1 = 0;
    return;
  } else {
  }
  if (ldv_timer_1_2 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_1_2) {
    ldv_timer_1_2 = 0;
    return;
  } else {
  }
  if (ldv_timer_1_3 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_1_3) {
    ldv_timer_1_3 = 0;
    return;
  } else {
  }
  return;
}
}
void activate_suitable_timer_1(struct timer_list *timer , unsigned long data )
{
  {
  if (ldv_timer_1_0 == 0 || ldv_timer_1_0 == 2) {
    ldv_timer_list_1_0 = timer;
    ldv_timer_list_1_0->data = data;
    ldv_timer_1_0 = 1;
    return;
  } else {
  }
  if (ldv_timer_1_1 == 0 || ldv_timer_1_1 == 2) {
    ldv_timer_list_1_1 = timer;
    ldv_timer_list_1_1->data = data;
    ldv_timer_1_1 = 1;
    return;
  } else {
  }
  if (ldv_timer_1_2 == 0 || ldv_timer_1_2 == 2) {
    ldv_timer_list_1_2 = timer;
    ldv_timer_list_1_2->data = data;
    ldv_timer_1_2 = 1;
    return;
  } else {
  }
  if (ldv_timer_1_3 == 0 || ldv_timer_1_3 == 2) {
    ldv_timer_list_1_3 = timer;
    ldv_timer_list_1_3->data = data;
    ldv_timer_1_3 = 1;
    return;
  } else {
  }
  return;
}
}
void activate_pending_timer_1(struct timer_list *timer , unsigned long data , int pending_flag )
{
  {
  if ((unsigned long )ldv_timer_list_1_0 == (unsigned long )timer) {
    if (ldv_timer_1_0 == 2 || pending_flag != 0) {
      ldv_timer_list_1_0 = timer;
      ldv_timer_list_1_0->data = data;
      ldv_timer_1_0 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_1_1 == (unsigned long )timer) {
    if (ldv_timer_1_1 == 2 || pending_flag != 0) {
      ldv_timer_list_1_1 = timer;
      ldv_timer_list_1_1->data = data;
      ldv_timer_1_1 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_1_2 == (unsigned long )timer) {
    if (ldv_timer_1_2 == 2 || pending_flag != 0) {
      ldv_timer_list_1_2 = timer;
      ldv_timer_list_1_2->data = data;
      ldv_timer_1_2 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_1_3 == (unsigned long )timer) {
    if (ldv_timer_1_3 == 2 || pending_flag != 0) {
      ldv_timer_list_1_3 = timer;
      ldv_timer_list_1_3->data = data;
      ldv_timer_1_3 = 1;
    } else {
    }
    return;
  } else {
  }
  activate_suitable_timer_1(timer, data);
  return;
}
}
void ldv_initialize_vb2_ops_7(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(848UL);
  s2255_video_qops_group1 = (struct vb2_queue *)tmp;
  tmp___0 = ldv_init_zalloc(928UL);
  s2255_video_qops_group0 = (struct vb2_buffer *)tmp___0;
  return;
}
}
void choose_timer_1(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_timer_1_0 == 1) {
    ldv_timer_1_0 = 2;
    ldv_timer_1(ldv_timer_1_0, ldv_timer_list_1_0);
  } else {
  }
  goto ldv_37208;
  case 1: ;
  if (ldv_timer_1_1 == 1) {
    ldv_timer_1_1 = 2;
    ldv_timer_1(ldv_timer_1_1, ldv_timer_list_1_1);
  } else {
  }
  goto ldv_37208;
  case 2: ;
  if (ldv_timer_1_2 == 1) {
    ldv_timer_1_2 = 2;
    ldv_timer_1(ldv_timer_1_2, ldv_timer_list_1_2);
  } else {
  }
  goto ldv_37208;
  case 3: ;
  if (ldv_timer_1_3 == 1) {
    ldv_timer_1_3 = 2;
    ldv_timer_1(ldv_timer_1_3, ldv_timer_list_1_3);
  } else {
  }
  goto ldv_37208;
  default:
  ldv_stop();
  }
  ldv_37208: ;
  return;
}
}
void ldv_timer_1(int state , struct timer_list *timer )
{
  {
  LDV_IN_INTERRUPT = 2;
  s2255_timer(timer->data);
  LDV_IN_INTERRUPT = 1;
  return;
}
}
void ldv_initialize_v4l2_ioctl_ops_5(void)
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___3 ;
  void *tmp___4 ;
  {
  tmp = ldv_init_zalloc(32UL);
  s2255_ioctl_ops_group2 = (struct v4l2_event_subscription const *)tmp;
  tmp___0 = ldv_init_zalloc(208UL);
  s2255_ioctl_ops_group0 = (struct v4l2_format *)tmp___0;
  tmp___1 = ldv_init_zalloc(176UL);
  s2255_ioctl_ops_group4 = (struct v4l2_fh *)tmp___1;
  s2255_ioctl_ops_group3 = ldv_malloc(sizeof(struct file));
  tmp___3 = ldv_init_zalloc(88UL);
  s2255_ioctl_ops_group5 = (struct v4l2_buffer *)tmp___3;
  tmp___4 = ldv_init_zalloc(204UL);
  s2255_ioctl_ops_group1 = (struct v4l2_streamparm *)tmp___4;
  return;
}
}
int main(void)
{
  unsigned int ldvarg1 ;
  size_t ldvarg4 ;
  loff_t *ldvarg3 ;
  void *tmp ;
  unsigned long ldvarg0 ;
  char *ldvarg5 ;
  void *tmp___0 ;
  struct poll_table_struct *ldvarg2 ;
  void *tmp___1 ;
  struct vm_area_struct *ldvarg6 ;
  void *tmp___2 ;
  struct v4l2_ctrl *ldvarg7 ;
  void *tmp___3 ;
  void **ldvarg8 ;
  void *tmp___4 ;
  struct v4l2_format *ldvarg11 ;
  void *tmp___5 ;
  unsigned int ldvarg13 ;
  unsigned int *ldvarg10 ;
  void *tmp___6 ;
  unsigned int *ldvarg12 ;
  void *tmp___7 ;
  unsigned int *ldvarg9 ;
  void *tmp___8 ;
  struct usb_device_id *ldvarg14 ;
  void *tmp___9 ;
  struct video_device *ldvarg15 ;
  void *tmp___10 ;
  unsigned int ldvarg18 ;
  struct v4l2_requestbuffers *ldvarg51 ;
  void *tmp___11 ;
  struct v4l2_capability *ldvarg32 ;
  void *tmp___12 ;
  void *ldvarg23 ;
  void *tmp___13 ;
  enum v4l2_buf_type ldvarg43 ;
  void *ldvarg42 ;
  void *tmp___14 ;
  void *ldvarg50 ;
  void *tmp___15 ;
  void *ldvarg46 ;
  void *tmp___16 ;
  unsigned int *ldvarg37 ;
  void *tmp___17 ;
  void *ldvarg29 ;
  void *tmp___18 ;
  void *ldvarg44 ;
  void *tmp___19 ;
  struct v4l2_jpegcompression *ldvarg24 ;
  void *tmp___20 ;
  void *ldvarg35 ;
  void *tmp___21 ;
  void *ldvarg38 ;
  void *tmp___22 ;
  void *ldvarg33 ;
  void *tmp___23 ;
  enum v4l2_buf_type ldvarg16 ;
  v4l2_std_id ldvarg48 ;
  struct v4l2_frmsizeenum *ldvarg34 ;
  void *tmp___24 ;
  struct v4l2_jpegcompression *ldvarg28 ;
  void *tmp___25 ;
  void *ldvarg47 ;
  void *tmp___26 ;
  void *ldvarg39 ;
  void *tmp___27 ;
  void *ldvarg20 ;
  void *tmp___28 ;
  void *ldvarg31 ;
  void *tmp___29 ;
  struct v4l2_fmtdesc *ldvarg41 ;
  void *tmp___30 ;
  void *ldvarg49 ;
  void *tmp___31 ;
  void *ldvarg36 ;
  void *tmp___32 ;
  void *ldvarg40 ;
  void *tmp___33 ;
  void *ldvarg45 ;
  void *tmp___34 ;
  void *ldvarg27 ;
  void *tmp___35 ;
  v4l2_std_id *ldvarg26 ;
  void *tmp___36 ;
  struct v4l2_frmivalenum *ldvarg30 ;
  void *tmp___37 ;
  struct v4l2_input *ldvarg21 ;
  void *tmp___38 ;
  void *ldvarg25 ;
  void *tmp___39 ;
  void *ldvarg17 ;
  void *tmp___40 ;
  void *ldvarg22 ;
  void *tmp___41 ;
  void *ldvarg19 ;
  void *tmp___42 ;
  void *ldvarg52 ;
  void *tmp___43 ;
  int tmp___44 ;
  int tmp___45 ;
  int tmp___46 ;
  int tmp___47 ;
  int tmp___48 ;
  int tmp___49 ;
  int tmp___50 ;
  int tmp___51 ;
  {
  tmp = ldv_init_zalloc(8UL);
  ldvarg3 = (loff_t *)tmp;
  tmp___0 = ldv_init_zalloc(1UL);
  ldvarg5 = (char *)tmp___0;
  tmp___1 = ldv_init_zalloc(16UL);
  ldvarg2 = (struct poll_table_struct *)tmp___1;
  tmp___2 = ldv_init_zalloc(184UL);
  ldvarg6 = (struct vm_area_struct *)tmp___2;
  tmp___3 = ldv_init_zalloc(208UL);
  ldvarg7 = (struct v4l2_ctrl *)tmp___3;
  tmp___4 = ldv_init_zalloc(8UL);
  ldvarg8 = (void **)tmp___4;
  tmp___5 = ldv_init_zalloc(208UL);
  ldvarg11 = (struct v4l2_format *)tmp___5;
  tmp___6 = ldv_init_zalloc(4UL);
  ldvarg10 = (unsigned int *)tmp___6;
  tmp___7 = ldv_init_zalloc(4UL);
  ldvarg12 = (unsigned int *)tmp___7;
  tmp___8 = ldv_init_zalloc(4UL);
  ldvarg9 = (unsigned int *)tmp___8;
  tmp___9 = ldv_init_zalloc(32UL);
  ldvarg14 = (struct usb_device_id *)tmp___9;
  tmp___10 = ldv_init_zalloc(1832UL);
  ldvarg15 = (struct video_device *)tmp___10;
  tmp___11 = ldv_init_zalloc(20UL);
  ldvarg51 = (struct v4l2_requestbuffers *)tmp___11;
  tmp___12 = ldv_init_zalloc(104UL);
  ldvarg32 = (struct v4l2_capability *)tmp___12;
  tmp___13 = ldv_init_zalloc(1UL);
  ldvarg23 = tmp___13;
  tmp___14 = ldv_init_zalloc(1UL);
  ldvarg42 = tmp___14;
  tmp___15 = ldv_init_zalloc(1UL);
  ldvarg50 = tmp___15;
  tmp___16 = ldv_init_zalloc(1UL);
  ldvarg46 = tmp___16;
  tmp___17 = ldv_init_zalloc(4UL);
  ldvarg37 = (unsigned int *)tmp___17;
  tmp___18 = ldv_init_zalloc(1UL);
  ldvarg29 = tmp___18;
  tmp___19 = ldv_init_zalloc(1UL);
  ldvarg44 = tmp___19;
  tmp___20 = ldv_init_zalloc(140UL);
  ldvarg24 = (struct v4l2_jpegcompression *)tmp___20;
  tmp___21 = ldv_init_zalloc(1UL);
  ldvarg35 = tmp___21;
  tmp___22 = ldv_init_zalloc(1UL);
  ldvarg38 = tmp___22;
  tmp___23 = ldv_init_zalloc(1UL);
  ldvarg33 = tmp___23;
  tmp___24 = ldv_init_zalloc(44UL);
  ldvarg34 = (struct v4l2_frmsizeenum *)tmp___24;
  tmp___25 = ldv_init_zalloc(140UL);
  ldvarg28 = (struct v4l2_jpegcompression *)tmp___25;
  tmp___26 = ldv_init_zalloc(1UL);
  ldvarg47 = tmp___26;
  tmp___27 = ldv_init_zalloc(1UL);
  ldvarg39 = tmp___27;
  tmp___28 = ldv_init_zalloc(1UL);
  ldvarg20 = tmp___28;
  tmp___29 = ldv_init_zalloc(1UL);
  ldvarg31 = tmp___29;
  tmp___30 = ldv_init_zalloc(64UL);
  ldvarg41 = (struct v4l2_fmtdesc *)tmp___30;
  tmp___31 = ldv_init_zalloc(1UL);
  ldvarg49 = tmp___31;
  tmp___32 = ldv_init_zalloc(1UL);
  ldvarg36 = tmp___32;
  tmp___33 = ldv_init_zalloc(1UL);
  ldvarg40 = tmp___33;
  tmp___34 = ldv_init_zalloc(1UL);
  ldvarg45 = tmp___34;
  tmp___35 = ldv_init_zalloc(1UL);
  ldvarg27 = tmp___35;
  tmp___36 = ldv_init_zalloc(8UL);
  ldvarg26 = (v4l2_std_id *)tmp___36;
  tmp___37 = ldv_init_zalloc(52UL);
  ldvarg30 = (struct v4l2_frmivalenum *)tmp___37;
  tmp___38 = ldv_init_zalloc(80UL);
  ldvarg21 = (struct v4l2_input *)tmp___38;
  tmp___39 = ldv_init_zalloc(1UL);
  ldvarg25 = tmp___39;
  tmp___40 = ldv_init_zalloc(1UL);
  ldvarg17 = tmp___40;
  tmp___41 = ldv_init_zalloc(1UL);
  ldvarg22 = tmp___41;
  tmp___42 = ldv_init_zalloc(1UL);
  ldvarg19 = tmp___42;
  tmp___43 = ldv_init_zalloc(1UL);
  ldvarg52 = tmp___43;
  ldv_initialize();
  ldv_memset((void *)(& ldvarg1), 0, 4UL);
  ldv_memset((void *)(& ldvarg4), 0, 8UL);
  ldv_memset((void *)(& ldvarg0), 0, 8UL);
  ldv_memset((void *)(& ldvarg13), 0, 4UL);
  ldv_memset((void *)(& ldvarg18), 0, 4UL);
  ldv_memset((void *)(& ldvarg43), 0, 4UL);
  ldv_memset((void *)(& ldvarg16), 0, 4UL);
  ldv_memset((void *)(& ldvarg48), 0, 8UL);
  ldv_state_variable_6 = 0;
  ldv_state_variable_3 = 0;
  ldv_state_variable_7 = 0;
  ldv_state_variable_2 = 0;
  timer_init_1();
  ldv_state_variable_1 = 1;
  ldv_state_variable_4 = 0;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_5 = 0;
  ldv_37360:
  tmp___44 = __VERIFIER_nondet_int();
  switch (tmp___44) {
  case 0: ;
  if (ldv_state_variable_6 != 0) {
    tmp___45 = __VERIFIER_nondet_int();
    switch (tmp___45) {
    case 0: ;
    if (ldv_state_variable_6 == 1) {
      vb2_fop_mmap(s2255_fops_v4l_group0, ldvarg6);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      vb2_fop_mmap(s2255_fops_v4l_group0, ldvarg6);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_37292;
    case 1: ;
    if (ldv_state_variable_6 == 2) {
      vb2_fop_release(s2255_fops_v4l_group0);
      ldv_state_variable_6 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_37292;
    case 2: ;
    if (ldv_state_variable_6 == 2) {
      vb2_fop_read(s2255_fops_v4l_group0, ldvarg5, ldvarg4, ldvarg3);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_37292;
    case 3: ;
    if (ldv_state_variable_6 == 1) {
      vb2_fop_poll(s2255_fops_v4l_group0, ldvarg2);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      vb2_fop_poll(s2255_fops_v4l_group0, ldvarg2);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_37292;
    case 4: ;
    if (ldv_state_variable_6 == 1) {
      ldv_retval_0 = s2255_open(s2255_fops_v4l_group0);
      if (ldv_retval_0 == 0) {
        ldv_state_variable_6 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_37292;
    case 5: ;
    if (ldv_state_variable_6 == 1) {
      video_ioctl2(s2255_fops_v4l_group0, ldvarg1, ldvarg0);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      video_ioctl2(s2255_fops_v4l_group0, ldvarg1, ldvarg0);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_37292;
    default:
    ldv_stop();
    }
    ldv_37292: ;
  } else {
  }
  goto ldv_37299;
  case 1: ;
  if (ldv_state_variable_3 != 0) {
    tmp___46 = __VERIFIER_nondet_int();
    switch (tmp___46) {
    case 0: ;
    if (ldv_state_variable_3 == 1) {
      s2255_s_ctrl(ldvarg7);
      ldv_state_variable_3 = 1;
    } else {
    }
    goto ldv_37302;
    default:
    ldv_stop();
    }
    ldv_37302: ;
  } else {
  }
  goto ldv_37299;
  case 2: ;
  if (ldv_state_variable_7 != 0) {
    tmp___47 = __VERIFIER_nondet_int();
    switch (tmp___47) {
    case 0: ;
    if (ldv_state_variable_7 == 1) {
      vb2_ops_wait_finish(s2255_video_qops_group1);
      ldv_state_variable_7 = 1;
    } else {
    }
    goto ldv_37306;
    case 1: ;
    if (ldv_state_variable_7 == 1) {
      buffer_queue(s2255_video_qops_group0);
      ldv_state_variable_7 = 1;
    } else {
    }
    goto ldv_37306;
    case 2: ;
    if (ldv_state_variable_7 == 1) {
      vb2_ops_wait_prepare(s2255_video_qops_group1);
      ldv_state_variable_7 = 1;
    } else {
    }
    goto ldv_37306;
    case 3: ;
    if (ldv_state_variable_7 == 1) {
      stop_streaming(s2255_video_qops_group1);
      ldv_state_variable_7 = 1;
    } else {
    }
    goto ldv_37306;
    case 4: ;
    if (ldv_state_variable_7 == 1) {
      start_streaming(s2255_video_qops_group1, ldvarg13);
      ldv_state_variable_7 = 1;
    } else {
    }
    goto ldv_37306;
    case 5: ;
    if (ldv_state_variable_7 == 1) {
      buffer_prepare(s2255_video_qops_group0);
      ldv_state_variable_7 = 1;
    } else {
    }
    goto ldv_37306;
    case 6: ;
    if (ldv_state_variable_7 == 1) {
      queue_setup(s2255_video_qops_group1, (struct v4l2_format const *)ldvarg11,
                  ldvarg10, ldvarg9, ldvarg12, ldvarg8);
      ldv_state_variable_7 = 1;
    } else {
    }
    goto ldv_37306;
    default:
    ldv_stop();
    }
    ldv_37306: ;
  } else {
  }
  goto ldv_37299;
  case 3: ;
  if (ldv_state_variable_2 != 0) {
    tmp___48 = __VERIFIER_nondet_int();
    switch (tmp___48) {
    case 0: ;
    if (ldv_state_variable_2 == 1) {
      ldv_retval_1 = s2255_probe(s2255_driver_group1, (struct usb_device_id const *)ldvarg14);
      if (ldv_retval_1 == 0) {
        ldv_state_variable_2 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_37316;
    case 1: ;
    if (ldv_state_variable_2 == 2 && usb_counter == 0) {
      s2255_disconnect(s2255_driver_group1);
      ldv_state_variable_2 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_37316;
    default:
    ldv_stop();
    }
    ldv_37316: ;
  } else {
  }
  goto ldv_37299;
  case 4: ;
  if (ldv_state_variable_1 != 0) {
    choose_timer_1();
  } else {
  }
  goto ldv_37299;
  case 5: ;
  if (ldv_state_variable_4 != 0) {
    tmp___49 = __VERIFIER_nondet_int();
    switch (tmp___49) {
    case 0: ;
    if (ldv_state_variable_4 == 2) {
      s2255_video_device_release(ldvarg15);
      ldv_state_variable_4 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_37322;
    case 1: ;
    if (ldv_state_variable_4 == 1) {
      ldv_probe_4();
      ldv_state_variable_4 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_37322;
    default:
    ldv_stop();
    }
    ldv_37322: ;
  } else {
  }
  goto ldv_37299;
  case 6: ;
  if (ldv_state_variable_0 != 0) {
    tmp___50 = __VERIFIER_nondet_int();
    switch (tmp___50) {
    case 0: ;
    if (ldv_state_variable_0 == 2 && ref_cnt == 0) {
      s2255_driver_exit();
      ldv_state_variable_0 = 3;
      goto ldv_final;
    } else {
    }
    goto ldv_37328;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_2 = s2255_driver_init();
      if (ldv_retval_2 != 0) {
        ldv_state_variable_0 = 3;
        goto ldv_final;
      } else {
      }
      if (ldv_retval_2 == 0) {
        ldv_state_variable_0 = 2;
        ldv_state_variable_5 = 1;
        ldv_initialize_v4l2_ioctl_ops_5();
        ldv_state_variable_7 = 1;
        ldv_initialize_vb2_ops_7();
        ldv_state_variable_3 = 1;
        ldv_state_variable_4 = 1;
        ldv_state_variable_6 = 1;
        ldv_initialize_v4l2_file_operations_6();
      } else {
      }
    } else {
    }
    goto ldv_37328;
    default:
    ldv_stop();
    }
    ldv_37328: ;
  } else {
  }
  goto ldv_37299;
  case 7: ;
  if (ldv_state_variable_5 != 0) {
    tmp___51 = __VERIFIER_nondet_int();
    switch (tmp___51) {
    case 0: ;
    if (ldv_state_variable_5 == 1) {
      vb2_ioctl_reqbufs(s2255_ioctl_ops_group3, ldvarg52, ldvarg51);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_37333;
    case 1: ;
    if (ldv_state_variable_5 == 1) {
      v4l2_event_unsubscribe(s2255_ioctl_ops_group4, s2255_ioctl_ops_group2);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_37333;
    case 2: ;
    if (ldv_state_variable_5 == 1) {
      vidioc_try_fmt_vid_cap(s2255_ioctl_ops_group3, ldvarg50, s2255_ioctl_ops_group0);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_37333;
    case 3: ;
    if (ldv_state_variable_5 == 1) {
      vidioc_s_std(s2255_ioctl_ops_group3, ldvarg49, ldvarg48);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_37333;
    case 4: ;
    if (ldv_state_variable_5 == 1) {
      v4l2_ctrl_log_status(s2255_ioctl_ops_group3, ldvarg47);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_37333;
    case 5: ;
    if (ldv_state_variable_5 == 1) {
      vb2_ioctl_querybuf(s2255_ioctl_ops_group3, ldvarg46, s2255_ioctl_ops_group5);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_37333;
    case 6: ;
    if (ldv_state_variable_5 == 1) {
      vb2_ioctl_dqbuf(s2255_ioctl_ops_group3, ldvarg45, s2255_ioctl_ops_group5);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_37333;
    case 7: ;
    if (ldv_state_variable_5 == 1) {
      vb2_ioctl_streamoff(s2255_ioctl_ops_group3, ldvarg44, ldvarg43);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_37333;
    case 8: ;
    if (ldv_state_variable_5 == 1) {
      vidioc_enum_fmt_vid_cap(s2255_ioctl_ops_group3, ldvarg42, ldvarg41);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_37333;
    case 9: ;
    if (ldv_state_variable_5 == 1) {
      vidioc_s_fmt_vid_cap(s2255_ioctl_ops_group3, ldvarg40, s2255_ioctl_ops_group0);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_37333;
    case 10: ;
    if (ldv_state_variable_5 == 1) {
      vidioc_g_fmt_vid_cap(s2255_ioctl_ops_group3, ldvarg39, s2255_ioctl_ops_group0);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_37333;
    case 11: ;
    if (ldv_state_variable_5 == 1) {
      vidioc_g_input(s2255_ioctl_ops_group3, ldvarg38, ldvarg37);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_37333;
    case 12: ;
    if (ldv_state_variable_5 == 1) {
      vb2_ioctl_qbuf(s2255_ioctl_ops_group3, ldvarg36, s2255_ioctl_ops_group5);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_37333;
    case 13: ;
    if (ldv_state_variable_5 == 1) {
      vidioc_enum_framesizes(s2255_ioctl_ops_group3, ldvarg35, ldvarg34);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_37333;
    case 14: ;
    if (ldv_state_variable_5 == 1) {
      vidioc_querycap(s2255_ioctl_ops_group3, ldvarg33, ldvarg32);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_37333;
    case 15: ;
    if (ldv_state_variable_5 == 1) {
      vidioc_enum_frameintervals(s2255_ioctl_ops_group3, ldvarg31, ldvarg30);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_37333;
    case 16: ;
    if (ldv_state_variable_5 == 1) {
      vidioc_s_jpegcomp(s2255_ioctl_ops_group3, ldvarg29, (struct v4l2_jpegcompression const *)ldvarg28);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_37333;
    case 17: ;
    if (ldv_state_variable_5 == 1) {
      vidioc_g_std(s2255_ioctl_ops_group3, ldvarg27, ldvarg26);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_37333;
    case 18: ;
    if (ldv_state_variable_5 == 1) {
      vidioc_g_jpegcomp(s2255_ioctl_ops_group3, ldvarg25, ldvarg24);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_37333;
    case 19: ;
    if (ldv_state_variable_5 == 1) {
      vidioc_g_parm(s2255_ioctl_ops_group3, ldvarg23, s2255_ioctl_ops_group1);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_37333;
    case 20: ;
    if (ldv_state_variable_5 == 1) {
      vidioc_enum_input(s2255_ioctl_ops_group3, ldvarg22, ldvarg21);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_37333;
    case 21: ;
    if (ldv_state_variable_5 == 1) {
      v4l2_ctrl_subscribe_event(s2255_ioctl_ops_group4, s2255_ioctl_ops_group2);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_37333;
    case 22: ;
    if (ldv_state_variable_5 == 1) {
      vidioc_s_parm(s2255_ioctl_ops_group3, ldvarg20, s2255_ioctl_ops_group1);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_37333;
    case 23: ;
    if (ldv_state_variable_5 == 1) {
      vidioc_s_input(s2255_ioctl_ops_group3, ldvarg19, ldvarg18);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_37333;
    case 24: ;
    if (ldv_state_variable_5 == 1) {
      vb2_ioctl_streamon(s2255_ioctl_ops_group3, ldvarg17, ldvarg16);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_37333;
    default:
    ldv_stop();
    }
    ldv_37333: ;
  } else {
  }
  goto ldv_37299;
  default:
  ldv_stop();
  }
  ldv_37299: ;
  goto ldv_37360;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_irqrestore_12(lock, flags);
  return;
}
}
void *ldv_zalloc(size_t size ) ;
__inline static void *kzalloc(size_t size , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_zalloc(size);
  return (tmp);
}
}
int ldv_usb_submit_urb_24(struct urb *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
int ldv_usb_submit_urb_25(struct urb *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
int ldv_del_timer_sync_26(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_1(ldv_func_arg1);
  return (ldv_func_res);
}
}
void *ldv_malloc(size_t size ) ;
void *ldv_vmalloc_27(unsigned long ldv_func_arg1 )
{
  void *tmp ;
  {
  ldv_check_alloc_nonatomic();
  tmp = ldv_malloc(ldv_func_arg1);
  return (tmp);
}
}
int ldv_usb_submit_urb_28(struct urb *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
struct urb *ldv_usb_alloc_urb_29(int ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct urb));
  return ((struct urb *)tmp);
}
}
int ldv_usb_submit_urb_30(struct urb *ldv_func_arg1 , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
int ldv_mod_timer_31(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_1(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
struct urb *ldv_usb_alloc_urb_32(int ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct urb));
  return ((struct urb *)tmp);
}
}
int ldv_del_timer_sync_33(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_1(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_usb_register_driver_34(struct usb_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                               char const *ldv_func_arg3 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  {
  tmp = usb_register_driver(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  ldv_state_variable_2 = 1;
  usb_counter = 0;
  ldv_usb_driver_2();
  return (ldv_func_res);
}
}
void ldv_usb_deregister_35(struct usb_driver *arg )
{
  {
  usb_deregister(arg);
  ldv_state_variable_2 = 0;
  return;
}
}
__inline static void ldv_error(void)
{
  {
  ERROR: ;
  {reach_error();}
}
}
bool ldv_is_err(void const *ptr )
{
  {
  return ((unsigned long )ptr > 2012UL);
}
}
void *ldv_err_ptr(long error )
{
  {
  return ((void *)(2012L - error));
}
}
long ldv_ptr_err(void const *ptr )
{
  {
  return ((long )(2012UL - (unsigned long )ptr));
}
}
bool ldv_is_err_or_null(void const *ptr )
{
  bool tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )ptr == (unsigned long )((void const *)0)) {
    tmp___0 = 1;
  } else {
    tmp = ldv_is_err(ptr);
    if ((int )tmp) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  }
  return ((bool )tmp___0);
}
}
int ldv_spin = 0;
void ldv_check_alloc_flags(gfp_t flags )
{
  {
  if (ldv_spin != 0 && (flags & 16U) != 0U) {
    ldv_error();
  } else {
  }
  return;
}
}
extern struct page *ldv_some_page(void) ;
struct page *ldv_check_alloc_flags_and_return_some_page(gfp_t flags )
{
  struct page *tmp ;
  {
  if (ldv_spin != 0 && (flags & 16U) != 0U) {
    ldv_error();
  } else {
  }
  tmp = ldv_some_page();
  return (tmp);
}
}
void ldv_check_alloc_nonatomic(void)
{
  {
  if (ldv_spin != 0) {
    ldv_error();
  } else {
  }
  return;
}
}
void ldv_spin_lock(void)
{
  {
  ldv_spin = 1;
  return;
}
}
void ldv_spin_unlock(void)
{
  {
  ldv_spin = 0;
  return;
}
}
int ldv_spin_trylock(void)
{
  int is_lock ;
  {
  is_lock = ldv_undef_int();
  if (is_lock != 0) {
    return (0);
  } else {
    ldv_spin = 1;
    return (1);
  }
}
}
void __dynamic_dev_dbg(struct _ddebug *arg0, const struct device *arg1, const char *arg2, ...) {
  return;
}
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
void __might_sleep(const char *arg0, int arg1, int arg2) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __msecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __v4l2_ctrl_s_ctrl(struct v4l2_ctrl *arg0, s32 arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int __video_register_device(struct video_device *arg0, int arg1, int arg2, int arg3, struct module *arg4) {
  return __VERIFIER_nondet_int();
}
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return;
}
void _dev_info(const struct device *arg0, const char *arg1, ...) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int del_timer_sync(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
void dev_err(const struct device *arg0, const char *arg1, ...) {
  return;
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
void ldv_check_final_state() {
  return;
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_probe_4() {
  return __VERIFIER_nondet_int();
}
struct page *ldv_some_page() {
  return ldv_malloc(sizeof(struct page));
}
void list_del(struct list_head *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int mod_timer(struct timer_list *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_int();
}
void msleep(unsigned int arg0) {
  return;
}
void mutex_destroy(struct mutex *arg0) {
  return;
}
void mutex_lock_nested(struct mutex *arg0, unsigned int arg1) {
  return;
}
void mutex_unlock(struct mutex *arg0) {
  return;
}
long __VERIFIER_nondet_long(void);
long int prepare_to_wait_event(wait_queue_head_t *arg0, wait_queue_t *arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
void release_firmware(const struct firmware *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int request_firmware(const struct firmware **arg0, const char *arg1, struct device *arg2) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
long int schedule_timeout(long arg0) {
  return __VERIFIER_nondet_long();
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int usb_bulk_msg(struct usb_device *arg0, unsigned int arg1, void *arg2, int arg3, int *arg4, int arg5) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_control_msg(struct usb_device *arg0, unsigned int arg1, __u8 arg2, __u8 arg3, __u16 arg4, __u16 arg5, void *arg6, __u16 arg7, int arg8) {
  return __VERIFIER_nondet_int();
}
void usb_deregister(struct usb_driver *arg0) {
  return;
}
void usb_free_urb(struct urb *arg0) {
  return;
}
struct usb_device *usb_get_dev(struct usb_device *arg0) {
  return ldv_malloc(sizeof(struct usb_device));
}
void usb_kill_urb(struct urb *arg0) {
  return;
}
void usb_put_dev(struct usb_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_register_driver(struct usb_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_reset_device(struct usb_device *arg0) {
  return __VERIFIER_nondet_int();
}
void v4l2_ctrl_handler_free(struct v4l2_ctrl_handler *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int v4l2_ctrl_handler_init_class(struct v4l2_ctrl_handler *arg0, unsigned int arg1, struct lock_class_key *arg2, const char *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int v4l2_ctrl_log_status(struct file *arg0, void *arg1) {
  return __VERIFIER_nondet_int();
}
struct v4l2_ctrl *v4l2_ctrl_new_custom(struct v4l2_ctrl_handler *arg0, const struct v4l2_ctrl_config *arg1, void *arg2) {
  return ldv_malloc(sizeof(struct v4l2_ctrl));
}
struct v4l2_ctrl *v4l2_ctrl_new_std(struct v4l2_ctrl_handler *arg0, const struct v4l2_ctrl_ops *arg1, u32 arg2, s64 arg3, s64 arg4, u64 arg5, s64 arg6) {
  return ldv_malloc(sizeof(struct v4l2_ctrl));
}
int __VERIFIER_nondet_int(void);
int v4l2_ctrl_subscribe_event(struct v4l2_fh *arg0, const struct v4l2_event_subscription *arg1) {
  return __VERIFIER_nondet_int();
}
void v4l2_device_disconnect(struct v4l2_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int v4l2_device_register(struct device *arg0, struct v4l2_device *arg1) {
  return __VERIFIER_nondet_int();
}
void v4l2_device_unregister(struct v4l2_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int v4l2_event_unsubscribe(struct v4l2_fh *arg0, const struct v4l2_event_subscription *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int v4l2_fh_open(struct file *arg0) {
  return __VERIFIER_nondet_int();
}
void v4l2_get_timestamp(struct timeval *arg0) {
  return;
}
void vb2_buffer_done(struct vb2_buffer *arg0, enum vb2_buffer_state arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int vb2_fop_mmap(struct file *arg0, struct vm_area_struct *arg1) {
  return __VERIFIER_nondet_int();
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int vb2_fop_poll(struct file *arg0, poll_table *arg1) {
  return __VERIFIER_nondet_uint();
}
long __VERIFIER_nondet_long(void);
ssize_t vb2_fop_read(struct file *arg0, char *arg1, size_t arg2, loff_t *arg3) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int vb2_fop_release(struct file *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int vb2_ioctl_dqbuf(struct file *arg0, void *arg1, struct v4l2_buffer *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int vb2_ioctl_qbuf(struct file *arg0, void *arg1, struct v4l2_buffer *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int vb2_ioctl_querybuf(struct file *arg0, void *arg1, struct v4l2_buffer *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int vb2_ioctl_reqbufs(struct file *arg0, void *arg1, struct v4l2_requestbuffers *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int vb2_ioctl_streamoff(struct file *arg0, void *arg1, enum v4l2_buf_type arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int vb2_ioctl_streamon(struct file *arg0, void *arg1, enum v4l2_buf_type arg2) {
  return __VERIFIER_nondet_int();
}
void vb2_ops_wait_finish(struct vb2_queue *arg0) {
  return;
}
void vb2_ops_wait_prepare(struct vb2_queue *arg0) {
  return;
}
void *vb2_plane_vaddr(struct vb2_buffer *arg0, unsigned int arg1) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int vb2_queue_init(struct vb2_queue *arg0) {
  return __VERIFIER_nondet_int();
}
void vfree(const void *arg0) {
  return;
}
struct video_device *video_devdata(struct file *arg0) {
  return ldv_malloc(sizeof(struct video_device));
}
long __VERIFIER_nondet_long(void);
long int video_ioctl2(struct file *arg0, unsigned int arg1, unsigned long arg2) {
  return __VERIFIER_nondet_long();
}
void video_unregister_device(struct video_device *arg0) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
