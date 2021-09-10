.class public Lcom/android/providers/telephony/bin/BinServiceStatus;
.super Ljava/lang/Object;
.source "BinServiceStatus.java"


# static fields
.field private static sInstance:Lcom/android/providers/telephony/bin/BinServiceStatus;


# instance fields
.field private final LOCK:Ljava/lang/Object;

.field private mRunningBinTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/providers/telephony/bin/binmsg/BinBaseMsg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/bin/BinServiceStatus;->LOCK:Ljava/lang/Object;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/telephony/bin/BinServiceStatus;->mRunningBinTasks:Ljava/util/ArrayList;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/providers/telephony/bin/BinServiceStatus;
    .locals 2

    const-class v0, Lcom/android/providers/telephony/bin/BinServiceStatus;

    monitor-enter v0

    .line 21
    :try_start_0
    sget-object v1, Lcom/android/providers/telephony/bin/BinServiceStatus;->sInstance:Lcom/android/providers/telephony/bin/BinServiceStatus;

    if-nez v1, :cond_0

    .line 22
    new-instance v1, Lcom/android/providers/telephony/bin/BinServiceStatus;

    invoke-direct {v1}, Lcom/android/providers/telephony/bin/BinServiceStatus;-><init>()V

    sput-object v1, Lcom/android/providers/telephony/bin/BinServiceStatus;->sInstance:Lcom/android/providers/telephony/bin/BinServiceStatus;

    .line 24
    :cond_0
    sget-object v1, Lcom/android/providers/telephony/bin/BinServiceStatus;->sInstance:Lcom/android/providers/telephony/bin/BinServiceStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public addRunning(Lcom/android/providers/telephony/bin/binmsg/BinBaseMsg;)V
    .locals 5

    .line 28
    iget-object v0, p0, Lcom/android/providers/telephony/bin/BinServiceStatus;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "TP/BinServiceStatus"

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/providers/telephony/bin/binmsg/BinBaseMsg;->getMessageType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", createdTime : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p1}, Lcom/android/providers/telephony/bin/binmsg/BinBaseMsg;->getCreatedTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object p0, p0, Lcom/android/providers/telephony/bin/BinServiceStatus;->mRunningBinTasks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isRunning()Z
    .locals 10

    .line 44
    iget-object v0, p0, Lcom/android/providers/telephony/bin/BinServiceStatus;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 45
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/telephony/bin/BinServiceStatus;->mRunningBinTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 46
    monitor-exit v0

    return v2

    .line 49
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x493e0

    sub-long/2addr v3, v5

    .line 50
    iget-object v1, p0, Lcom/android/providers/telephony/bin/BinServiceStatus;->mRunningBinTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 51
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 52
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/providers/telephony/bin/binmsg/BinBaseMsg;

    .line 53
    invoke-virtual {v5}, Lcom/android/providers/telephony/bin/binmsg/BinBaseMsg;->getCreatedTime()J

    move-result-wide v6

    cmp-long v6, v6, v3

    if-gez v6, :cond_1

    const-string v6, "TP/BinServiceStatus"

    .line 54
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "force delete type : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/providers/telephony/bin/binmsg/BinBaseMsg;->getMessageType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " createdTime : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v5}, Lcom/android/providers/telephony/bin/binmsg/BinBaseMsg;->getCreatedTime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 54
    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 60
    :cond_2
    iget-object p0, p0, Lcom/android/providers/telephony/bin/BinServiceStatus;->mRunningBinTasks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_3

    const/4 v2, 0x1

    :cond_3
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    .line 61
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeRunning(Lcom/android/providers/telephony/bin/binmsg/BinBaseMsg;)V
    .locals 5

    .line 36
    iget-object v0, p0, Lcom/android/providers/telephony/bin/BinServiceStatus;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 37
    :try_start_0
    iget-object p0, p0, Lcom/android/providers/telephony/bin/BinServiceStatus;->mRunningBinTasks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    const-string v1, "TP/BinServiceStatus"

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/providers/telephony/bin/binmsg/BinBaseMsg;->getMessageType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", createdTime : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {p1}, Lcom/android/providers/telephony/bin/binmsg/BinBaseMsg;->getCreatedTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", result : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 38
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
