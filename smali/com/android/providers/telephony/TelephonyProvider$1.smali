.class Lcom/android/providers/telephony/TelephonyProvider$1;
.super Ljava/lang/Object;
.source "TelephonyProvider.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/telephony/TelephonyProvider;->restoreApnsWithService(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/telephony/TelephonyProvider;

.field final synthetic val$connectionBindingInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/android/providers/telephony/TelephonyProvider;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 3927
    iput-object p1, p0, Lcom/android/providers/telephony/TelephonyProvider$1;->this$0:Lcom/android/providers/telephony/TelephonyProvider;

    iput-object p2, p0, Lcom/android/providers/telephony/TelephonyProvider$1;->val$connectionBindingInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 2

    .line 3948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The binding to the apn service connection is dead: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/providers/telephony/TelephonyProvider;->access$200(Ljava/lang/String;)V

    .line 3949
    iget-object p1, p0, Lcom/android/providers/telephony/TelephonyProvider$1;->this$0:Lcom/android/providers/telephony/TelephonyProvider;

    iget-object p1, p1, Lcom/android/providers/telephony/TelephonyProvider;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 3950
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyProvider$1;->val$connectionBindingInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3951
    iget-object p0, p0, Lcom/android/providers/telephony/TelephonyProvider$1;->this$0:Lcom/android/providers/telephony/TelephonyProvider;

    iget-object p0, p0, Lcom/android/providers/telephony/TelephonyProvider;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 3952
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 2

    .line 3957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null binding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/providers/telephony/TelephonyProvider;->access$200(Ljava/lang/String;)V

    .line 3958
    iget-object p1, p0, Lcom/android/providers/telephony/TelephonyProvider$1;->this$0:Lcom/android/providers/telephony/TelephonyProvider;

    iget-object p1, p1, Lcom/android/providers/telephony/TelephonyProvider;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 3959
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyProvider$1;->val$connectionBindingInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3960
    iget-object p0, p0, Lcom/android/providers/telephony/TelephonyProvider$1;->this$0:Lcom/android/providers/telephony/TelephonyProvider;

    iget-object p0, p0, Lcom/android/providers/telephony/TelephonyProvider;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 3961
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "restoreApnsWithService: onServiceConnected"

    .line 3931
    invoke-static {p1}, Lcom/android/providers/telephony/TelephonyProvider;->access$000(Ljava/lang/String;)V

    .line 3932
    iget-object p1, p0, Lcom/android/providers/telephony/TelephonyProvider$1;->this$0:Lcom/android/providers/telephony/TelephonyProvider;

    iget-object p1, p1, Lcom/android/providers/telephony/TelephonyProvider;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 3933
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyProvider$1;->this$0:Lcom/android/providers/telephony/TelephonyProvider;

    invoke-static {p2}, Landroid/service/carrier/IApnSourceService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/carrier/IApnSourceService;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/providers/telephony/TelephonyProvider;->access$3302(Lcom/android/providers/telephony/TelephonyProvider;Landroid/service/carrier/IApnSourceService;)Landroid/service/carrier/IApnSourceService;

    .line 3934
    iget-object p0, p0, Lcom/android/providers/telephony/TelephonyProvider$1;->this$0:Lcom/android/providers/telephony/TelephonyProvider;

    iget-object p0, p0, Lcom/android/providers/telephony/TelephonyProvider;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 3935
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "mIApnSourceService has disconnected unexpectedly"

    .line 3940
    invoke-static {p1}, Lcom/android/providers/telephony/TelephonyProvider;->access$200(Ljava/lang/String;)V

    .line 3941
    iget-object p1, p0, Lcom/android/providers/telephony/TelephonyProvider$1;->this$0:Lcom/android/providers/telephony/TelephonyProvider;

    iget-object p1, p1, Lcom/android/providers/telephony/TelephonyProvider;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 3942
    :try_start_0
    iget-object p0, p0, Lcom/android/providers/telephony/TelephonyProvider$1;->this$0:Lcom/android/providers/telephony/TelephonyProvider;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/providers/telephony/TelephonyProvider;->access$3302(Lcom/android/providers/telephony/TelephonyProvider;Landroid/service/carrier/IApnSourceService;)Landroid/service/carrier/IApnSourceService;

    .line 3943
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
