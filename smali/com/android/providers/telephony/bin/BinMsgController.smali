.class public Lcom/android/providers/telephony/bin/BinMsgController;
.super Ljava/lang/Object;
.source "BinMsgController.java"


# direct methods
.method public static delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 57
    invoke-static {p1}, Lcom/android/providers/telephony/bin/BinMsgController;->getBinInstance(Ljava/lang/String;)Lcom/android/providers/telephony/bin/binmsg/BinBaseMsg;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 62
    :cond_0
    invoke-virtual {p1, p0, p2}, Lcom/android/providers/telephony/bin/binmsg/BinBaseMsg;->delete(Landroid/database/sqlite/SQLiteDatabase;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private static getBinInstance(Ljava/lang/String;)Lcom/android/providers/telephony/bin/binmsg/BinBaseMsg;
    .locals 6

    .line 79
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "rcs_multipart"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v0, "wpm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_2
    const-string v0, "sms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "mms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :sswitch_4
    const-string v0, "im"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_5
    const-string v0, "ft"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v5, :cond_5

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unspoorted MSG type!! : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TP/BinMsgController"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 91
    :cond_1
    new-instance p0, Lcom/android/providers/telephony/bin/binmsg/BinRcsMultiPart;

    invoke-direct {p0}, Lcom/android/providers/telephony/bin/binmsg/BinRcsMultiPart;-><init>()V

    return-object p0

    .line 89
    :cond_2
    new-instance p0, Lcom/android/providers/telephony/bin/binmsg/BinFt;

    invoke-direct {p0}, Lcom/android/providers/telephony/bin/binmsg/BinFt;-><init>()V

    return-object p0

    .line 87
    :cond_3
    new-instance p0, Lcom/android/providers/telephony/bin/binmsg/BinIm;

    invoke-direct {p0}, Lcom/android/providers/telephony/bin/binmsg/BinIm;-><init>()V

    return-object p0

    .line 85
    :cond_4
    new-instance p0, Lcom/android/providers/telephony/bin/binmsg/BinWpm;

    invoke-direct {p0}, Lcom/android/providers/telephony/bin/binmsg/BinWpm;-><init>()V

    return-object p0

    .line 83
    :cond_5
    new-instance p0, Lcom/android/providers/telephony/bin/binmsg/BinMms;

    invoke-direct {p0}, Lcom/android/providers/telephony/bin/binmsg/BinMms;-><init>()V

    return-object p0

    .line 81
    :cond_6
    new-instance p0, Lcom/android/providers/telephony/bin/binmsg/BinSms;

    invoke-direct {p0}, Lcom/android/providers/telephony/bin/binmsg/BinSms;-><init>()V

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0xcce -> :sswitch_5
        0xd24 -> :sswitch_4
        0x1a6d3 -> :sswitch_3
        0x1bd59 -> :sswitch_2
        0x1ccb4 -> :sswitch_1
        0x7225150f -> :sswitch_0
    .end sparse-switch
.end method

.method public static move(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/os/Bundle;J)Landroid/os/Bundle;
    .locals 1

    .line 29
    invoke-static {p1}, Lcom/android/providers/telephony/bin/BinMsgController;->getBinInstance(Ljava/lang/String;)Lcom/android/providers/telephony/bin/binmsg/BinBaseMsg;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 35
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/providers/telephony/bin/BinServiceStatus;->getInstance()Lcom/android/providers/telephony/bin/BinServiceStatus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/providers/telephony/bin/BinServiceStatus;->addRunning(Lcom/android/providers/telephony/bin/binmsg/BinBaseMsg;)V

    .line 36
    invoke-virtual {p1, p0, p2, p3, p4}, Lcom/android/providers/telephony/bin/binmsg/BinBaseMsg;->move(Landroid/database/sqlite/SQLiteDatabase;Landroid/os/Bundle;J)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-static {}, Lcom/android/providers/telephony/bin/BinServiceStatus;->getInstance()Lcom/android/providers/telephony/bin/BinServiceStatus;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/providers/telephony/bin/BinServiceStatus;->removeRunning(Lcom/android/providers/telephony/bin/binmsg/BinBaseMsg;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/android/providers/telephony/bin/BinServiceStatus;->getInstance()Lcom/android/providers/telephony/bin/BinServiceStatus;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/providers/telephony/bin/BinServiceStatus;->removeRunning(Lcom/android/providers/telephony/bin/binmsg/BinBaseMsg;)V

    .line 39
    throw p0
.end method

.method public static restore(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 43
    invoke-static {p1}, Lcom/android/providers/telephony/bin/BinMsgController;->getBinInstance(Ljava/lang/String;)Lcom/android/providers/telephony/bin/binmsg/BinBaseMsg;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 49
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/providers/telephony/bin/BinServiceStatus;->getInstance()Lcom/android/providers/telephony/bin/BinServiceStatus;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/providers/telephony/bin/BinServiceStatus;->addRunning(Lcom/android/providers/telephony/bin/binmsg/BinBaseMsg;)V

    .line 50
    invoke-virtual {p1, p0, p2}, Lcom/android/providers/telephony/bin/binmsg/BinBaseMsg;->restore(Landroid/database/sqlite/SQLiteDatabase;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    invoke-static {}, Lcom/android/providers/telephony/bin/BinServiceStatus;->getInstance()Lcom/android/providers/telephony/bin/BinServiceStatus;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/providers/telephony/bin/BinServiceStatus;->removeRunning(Lcom/android/providers/telephony/bin/binmsg/BinBaseMsg;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/android/providers/telephony/bin/BinServiceStatus;->getInstance()Lcom/android/providers/telephony/bin/BinServiceStatus;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/providers/telephony/bin/BinServiceStatus;->removeRunning(Lcom/android/providers/telephony/bin/binmsg/BinBaseMsg;)V

    .line 53
    throw p0
.end method

.method public static updateGroupIds(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;>;)I"
        }
    .end annotation

    .line 68
    new-instance v0, Lcom/android/providers/telephony/bin/binmsg/BinSms;

    invoke-direct {v0}, Lcom/android/providers/telephony/bin/binmsg/BinSms;-><init>()V

    const-string v1, "bin"

    .line 69
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "bin_sms"

    .line 70
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/providers/telephony/bin/binmsg/BinSms;->updateGroupIds(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)I

    move-result p0

    return p0

    :cond_0
    const-string v1, "restore"

    .line 71
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "sms"

    .line 72
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/providers/telephony/bin/binmsg/BinSms;->updateGroupIds(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
