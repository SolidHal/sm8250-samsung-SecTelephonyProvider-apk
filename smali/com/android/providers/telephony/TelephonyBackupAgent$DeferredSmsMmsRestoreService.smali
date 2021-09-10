.class public Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService;
.super Landroid/app/IntentService;
.source "TelephonyBackupAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/TelephonyBackupAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeferredSmsMmsRestoreService"
.end annotation


# instance fields
.field private final mFileComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mTelephonyBackupAgent:Lcom/android/providers/telephony/TelephonyBackupAgent;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "DeferredSmsMmsRestoreService"

    .line 517
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 509
    new-instance v0, Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService$1;

    invoke-direct {v0, p0}, Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService$1;-><init>(Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService;)V

    iput-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService;->mFileComparator:Ljava/util/Comparator;

    const/4 v0, 0x1

    .line 518
    invoke-virtual {p0, v0}, Landroid/app/IntentService;->setIntentRedelivery(Z)V

    return-void
.end method

.method private static getFilesToRestore(Landroid/content/Context;)[Ljava/io/File;
    .locals 1

    .line 594
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    new-instance v0, Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService$2;

    invoke-direct {v0}, Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService$2;-><init>()V

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static startIfFilesExist(Landroid/content/Context;)V
    .locals 2

    .line 586
    invoke-static {p0}, Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService;->getFilesToRestore(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 587
    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 590
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .line 567
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 568
    new-instance v0, Lcom/android/providers/telephony/TelephonyBackupAgent;

    invoke-direct {v0}, Lcom/android/providers/telephony/TelephonyBackupAgent;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService;->mTelephonyBackupAgent:Lcom/android/providers/telephony/TelephonyBackupAgent;

    .line 569
    invoke-virtual {v0, p0}, Landroid/app/backup/BackupAgent;->attach(Landroid/content/Context;)V

    .line 570
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService;->mTelephonyBackupAgent:Lcom/android/providers/telephony/TelephonyBackupAgent;

    invoke-virtual {v0}, Lcom/android/providers/telephony/TelephonyBackupAgent;->onCreate()V

    const-string v0, "power"

    .line 572
    invoke-virtual {p0, v0}, Landroid/app/IntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "DeferredSmsMmsRestoreService"

    .line 573
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService;->mTelephonyBackupAgent:Lcom/android/providers/telephony/TelephonyBackupAgent;

    if-eqz v0, :cond_0

    .line 579
    invoke-virtual {v0}, Landroid/app/backup/BackupAgent;->onDestroy()V

    const/4 v0, 0x0

    .line 580
    iput-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService;->mTelephonyBackupAgent:Lcom/android/providers/telephony/TelephonyBackupAgent;

    .line 582
    :cond_0
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 12

    const/4 p1, 0x0

    .line 527
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const/4 v0, 0x1

    .line 528
    invoke-static {v0}, Lcom/android/providers/telephony/TelephonyBackupAgent;->access$302(Z)Z

    .line 530
    invoke-static {p0}, Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService;->getFilesToRestore(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 532
    array-length v2, v1

    if-nez v2, :cond_0

    goto/16 :goto_5

    .line 535
    :cond_0
    iget-object v2, p0, Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService;->mFileComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 539
    array-length v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move v3, p1

    move v4, v3

    :goto_0
    const-string v5, "DeferredSmsMmsRestoreService"

    if-ge v3, v2, :cond_1

    :try_start_1
    aget-object v6, v1, v3

    .line 540
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 541
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onHandleIntent restoring file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 542
    :try_start_2
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 543
    :try_start_3
    iget-object v9, p0, Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService;->mTelephonyBackupAgent:Lcom/android/providers/telephony/TelephonyBackupAgent;

    invoke-virtual {v8}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-static {v9, v7, v10}, Lcom/android/providers/telephony/TelephonyBackupAgent;->access$400(Lcom/android/providers/telephony/TelephonyBackupAgent;Ljava/lang/String;Ljava/io/FileDescriptor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 545
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 549
    :try_start_5
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move v4, v0

    goto :goto_3

    :catch_0
    move-exception v4

    move v7, v0

    goto :goto_2

    :catchall_0
    move-exception v7

    .line 542
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v8

    :try_start_7
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v7
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v7

    move-object v11, v7

    move v7, v4

    move-object v4, v11

    :goto_2
    :try_start_8
    const-string v8, "onHandleIntent"

    .line 547
    invoke-static {v5, v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 549
    :try_start_9
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move v4, v7

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :goto_4
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 550
    throw v0

    :cond_1
    if-eqz v4, :cond_2

    const-string v0, "onHandleIntent done - notifying default sms app"

    .line 555
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 556
    invoke-static {v0, v0, p0}, Lcom/android/providers/telephony/ProviderUtil;->notifyIfNotDefaultSmsApp(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 560
    :cond_2
    invoke-static {p1}, Lcom/android/providers/telephony/TelephonyBackupAgent;->access$302(Z)Z

    .line 561
    iget-object p0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    .line 560
    :cond_3
    :goto_5
    invoke-static {p1}, Lcom/android/providers/telephony/TelephonyBackupAgent;->access$302(Z)Z

    .line 561
    iget-object p0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_3
    move-exception v0

    .line 560
    invoke-static {p1}, Lcom/android/providers/telephony/TelephonyBackupAgent;->access$302(Z)Z

    .line 561
    iget-object p0, p0, Lcom/android/providers/telephony/TelephonyBackupAgent$DeferredSmsMmsRestoreService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 562
    throw v0
.end method
