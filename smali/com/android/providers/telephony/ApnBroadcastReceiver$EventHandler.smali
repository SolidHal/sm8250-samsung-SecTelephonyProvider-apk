.class Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;
.super Landroid/os/Handler;
.source "ApnBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/ApnBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/android/providers/telephony/ApnBroadcastReceiver;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    .line 428
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/android/providers/telephony/ApnBroadcastReceiver;Landroid/os/Looper;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    .line 432
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 437
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start handleMessage msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$000(Ljava/lang/String;)V

    .line 438
    iget v2, v1, Landroid/os/Message;->what:I

    const-string v3, "nwkinfo"

    const-string v4, "slotID : "

    const-string v5, "nwkinfo_update_slot2"

    const-string v6, "nwkinfo_update_slot1"

    const-string v7, "simprof.preferences_name"

    const-string v8, "simprof.key.fota_flag"

    const-string v9, "phone"

    const/4 v10, -0x1

    const-string v11, "simprof.key.imsi"

    const-string v12, "ApnBroadcastReceiver"

    const-string v13, ""

    const/4 v14, 0x1

    const/4 v15, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_d

    .line 558
    :pswitch_0
    invoke-static {}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->startProcessLog()V

    const-string v2, "EVENT_CARRIER_CHANGED"

    .line 559
    invoke-static {v12, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v2, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$102(Lcom/android/providers/telephony/ApnBroadcastReceiver;Landroid/content/Context;)Landroid/content/Context;

    .line 561
    iget-object v2, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$100(Lcom/android/providers/telephony/ApnBroadcastReceiver;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-static {v2, v3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$202(Lcom/android/providers/telephony/ApnBroadcastReceiver;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;

    .line 562
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 563
    iget v3, v1, Landroid/os/Message;->arg2:I

    .line 564
    iget-object v5, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v5}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$100(Lcom/android/providers/telephony/ApnBroadcastReceiver;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v7, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 566
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iget-object v4, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v4}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$800(Lcom/android/providers/telephony/ApnBroadcastReceiver;)[Ljava/lang/String;

    move-result-object v4

    iget-object v6, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-virtual {v6, v11, v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->appendSimslotString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    .line 568
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mCurrentImsis[slotID] : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v6}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$800(Lcom/android/providers/telephony/ApnBroadcastReceiver;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object v4, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v4}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$900(Lcom/android/providers/telephony/ApnBroadcastReceiver;)[Ljava/lang/String;

    move-result-object v4

    iget-object v6, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-virtual {v6, v8, v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->appendSimslotString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    .line 572
    :cond_0
    iget-object v4, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v4, v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$1100(Lcom/android/providers/telephony/ApnBroadcastReceiver;I)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v4}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$1000(Lcom/android/providers/telephony/ApnBroadcastReceiver;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v5}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$900(Lcom/android/providers/telephony/ApnBroadcastReceiver;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const-string v4, "EVENT_CARRIER_CHANGED isSimChanged or CARRIER_CHANGED : UPDATED or FOTA"

    .line 573
    invoke-static {v12, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v0, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-virtual {v0, v2, v3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->updateDB(II)V

    .line 576
    :cond_2
    invoke-static {}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->stopProcessLog()V

    goto/16 :goto_d

    .line 657
    :pswitch_1
    new-instance v2, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;

    iget-object v4, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-direct {v2, v4}, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;-><init>(Lcom/android/providers/telephony/ApnBroadcastReceiver;)V

    .line 658
    iget-object v4, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    iget-object v7, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/content/Context;

    invoke-static {v4, v7}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$102(Lcom/android/providers/telephony/ApnBroadcastReceiver;Landroid/content/Context;)Landroid/content/Context;

    .line 659
    iget v4, v1, Landroid/os/Message;->arg1:I

    if-ne v4, v14, :cond_3

    move v4, v14

    goto :goto_0

    :cond_3
    move v4, v15

    :goto_0
    if-eqz v4, :cond_a

    const-string v3, "mdc.singlesku"

    .line 664
    invoke-static {v3, v15}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "content://telephony/carriers/restore"

    const/4 v5, 0x0

    if-eqz v3, :cond_5

    const-string v3, "It\'s TSS originated"

    .line 666
    invoke-static {v3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$000(Ljava/lang/String;)V

    .line 668
    invoke-static {v15}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "EUR"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 669
    iget-object v3, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$1400(Lcom/android/providers/telephony/ApnBroadcastReceiver;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "make TP do work once again for TSS."

    .line 670
    invoke-static {v3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$000(Ljava/lang/String;)V

    const-string v3, "content://telephony/carriers/update_db"

    .line 671
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 673
    iget-object v4, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v4}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$100(Lcom/android/providers/telephony/ApnBroadcastReceiver;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    const-string v3, "Restore apn for TSS."

    .line 676
    invoke-static {v3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$000(Ljava/lang/String;)V

    .line 677
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 679
    iget-object v4, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v4}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$100(Lcom/android/providers/telephony/ApnBroadcastReceiver;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 681
    :cond_5
    invoke-static {v15}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "USA"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 682
    invoke-static {v15}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "SPR"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 683
    iget-object v3, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$100(Lcom/android/providers/telephony/ApnBroadcastReceiver;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "device_provisioned"

    invoke-static {v3, v6, v15}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v14, :cond_7

    iget-object v3, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    .line 685
    invoke-static {v3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$100(Lcom/android/providers/telephony/ApnBroadcastReceiver;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "user_setup_complete"

    invoke-static {v3, v6, v15}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v14, :cond_6

    goto :goto_1

    :cond_6
    const-string v3, "Setup Wizard is not finished. Do not restore apn for byod."

    .line 693
    invoke-static {v3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$000(Ljava/lang/String;)V

    goto :goto_2

    .line 687
    :cond_7
    :goto_1
    sput-boolean v14, Lcom/android/providers/telephony/TelephonyProvider;->mNeedByodReset:Z

    .line 688
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 690
    iget-object v4, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v4}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$100(Lcom/android/providers/telephony/ApnBroadcastReceiver;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v3, "Restore apn for byod. USA model"

    .line 691
    invoke-static {v3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$000(Ljava/lang/String;)V

    .line 696
    :cond_8
    :goto_2
    invoke-static {}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$300()I

    move-result v3

    sub-int/2addr v3, v14

    :goto_3
    if-ltz v3, :cond_26

    .line 697
    iget-object v4, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v4, v3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$502(Lcom/android/providers/telephony/ApnBroadcastReceiver;I)I

    .line 698
    invoke-virtual {v2, v14}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 699
    iget-object v5, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v5, v3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$1500(Lcom/android/providers/telephony/ApnBroadcastReceiver;I)V

    .line 700
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v5

    if-eqz v5, :cond_9

    .line 701
    aget v6, v5, v15

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 702
    iget-object v6, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v6}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$100(Lcom/android/providers/telephony/ApnBroadcastReceiver;)Landroid/content/Context;

    move-result-object v6

    iput-object v6, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 703
    iput v3, v4, Landroid/os/Message;->arg1:I

    .line 704
    aget v5, v5, v15

    iput v5, v4, Landroid/os/Message;->arg2:I

    .line 705
    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 706
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sent sim profile popup for omc update in force. sim slot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 708
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Do not send sim profile popup because of invalid sub id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 713
    :cond_a
    iget-object v2, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$100(Lcom/android/providers/telephony/ApnBroadcastReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 715
    invoke-interface {v2, v6, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 716
    invoke-interface {v2, v5, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 717
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateStatus1 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", updateStatus2 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$000(Ljava/lang/String;)V

    if-ne v3, v14, :cond_c

    if-eq v4, v14, :cond_b

    goto :goto_5

    :cond_b
    const-string v0, "do not recoveryShowPopup"

    .line 731
    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$000(Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_c
    :goto_5
    const-string v7, "recoveryShowPopup,nwkinfo.db update"

    .line 719
    invoke-static {v7}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$000(Ljava/lang/String;)V

    .line 720
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 721
    invoke-interface {v2, v6, v14}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 722
    invoke-interface {v2, v5, v14}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 723
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-nez v3, :cond_d

    .line 725
    iget-object v2, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$100(Lcom/android/providers/telephony/ApnBroadcastReceiver;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3, v15}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$1600(Lcom/android/providers/telephony/ApnBroadcastReceiver;Landroid/content/Context;I)V

    :cond_d
    if-nez v4, :cond_26

    .line 728
    iget-object v0, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$100(Lcom/android/providers/telephony/ApnBroadcastReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2, v14}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$1600(Lcom/android/providers/telephony/ApnBroadcastReceiver;Landroid/content/Context;I)V

    goto/16 :goto_d

    .line 648
    :pswitch_2
    iget-object v2, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$102(Lcom/android/providers/telephony/ApnBroadcastReceiver;Landroid/content/Context;)Landroid/content/Context;

    .line 649
    iget-object v2, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    const-string v3, "45005"

    const-string v4, "lte.sktelecom.com"

    invoke-virtual {v2, v3, v4}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->apnTest(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    iget-object v2, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    const-string v3, "45008"

    const-string v4, "lte.ktfwing.com"

    invoke-virtual {v2, v3, v4}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->apnTest(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    iget-object v2, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    const-string v3, "311480"

    const-string v4, "VZWINTERNET"

    invoke-virtual {v2, v3, v4}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->apnTest(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    iget-object v2, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    const-string v3, "310380"

    const-string v4, "nxtgenphone"

    invoke-virtual {v2, v3, v4}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->apnTest(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    iget-object v2, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    const-string v3, "52501"

    const-string v4, "e-ideas"

    invoke-virtual {v2, v3, v4}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->apnTest(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    iget-object v0, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    const-string v2, "46000"

    const-string v3, "cmnet"

    invoke-virtual {v0, v2, v3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->apnTest(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 632
    :pswitch_3
    invoke-static {}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->startProcessLog()V

    .line 633
    iget-object v2, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$102(Lcom/android/providers/telephony/ApnBroadcastReceiver;Landroid/content/Context;)Landroid/content/Context;

    const-string v2, "EVENT_FOTA_UPDATE"

    .line 634
    invoke-static {v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$000(Ljava/lang/String;)V

    .line 635
    iget-object v2, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$100(Lcom/android/providers/telephony/ApnBroadcastReceiver;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v7, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 637
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 638
    :goto_6
    invoke-static {}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$300()I

    move-result v3

    if-ge v15, v3, :cond_e

    const-string v3, "fota flag on"

    .line 639
    invoke-static {v3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$000(Ljava/lang/String;)V

    .line 640
    iget-object v3, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-virtual {v3, v8, v15}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->appendSimslotString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v4}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$1000(Lcom/android/providers/telephony/ApnBroadcastReceiver;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 642
    :cond_e
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 644
    :cond_f
    iget-object v0, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->fotaUpdate()V

    .line 645
    invoke-static {}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->stopProcessLog()V

    goto/16 :goto_d

    .line 617
    :pswitch_4
    invoke-static {}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->startProcessLog()V

    const-string v2, "EVENT_NWKNAME_SELECT_DONE"

    .line 618
    invoke-static {v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$000(Ljava/lang/String;)V

    .line 619
    iget-object v2, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$102(Lcom/android/providers/telephony/ApnBroadcastReceiver;Landroid/content/Context;)Landroid/content/Context;

    .line 620
    iget-object v2, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$100(Lcom/android/providers/telephony/ApnBroadcastReceiver;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-static {v2, v3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$202(Lcom/android/providers/telephony/ApnBroadcastReceiver;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;

    .line 621
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 622
    iget v3, v1, Landroid/os/Message;->arg2:I

    .line 623
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "selectedNwkname"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 624
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selected Index : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", selectedNwkname: "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", slotId:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$000(Ljava/lang/String;)V

    .line 625
    iget-object v2, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v2, v3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$502(Lcom/android/providers/telephony/ApnBroadcastReceiver;I)I

    .line 626
    invoke-static {v3}, Lcom/android/providers/telephony/TelephonyProvider;->getSimNumeric(I)Ljava/lang/String;

    move-result-object v2

    .line 627
    iget-object v5, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v5, v4, v2, v3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$1300(Lcom/android/providers/telephony/ApnBroadcastReceiver;Ljava/lang/String;Ljava/lang/String;I)V

    .line 628
    iget-object v0, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->sendCompleteIntent()V

    .line 629
    invoke-static {}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->stopProcessLog()V

    goto/16 :goto_d

    .line 579
    :pswitch_5
    invoke-static {}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->startProcessLog()V

    const-string v2, "EVENT_SHOW_SELECT_APN"

    .line 580
    invoke-static {v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$000(Ljava/lang/String;)V

    .line 581
    iget-object v2, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$102(Lcom/android/providers/telephony/ApnBroadcastReceiver;Landroid/content/Context;)Landroid/content/Context;

    .line 582
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 583
    iget v3, v1, Landroid/os/Message;->arg2:I

    .line 584
    iget-object v4, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v4}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$100(Lcom/android/providers/telephony/ApnBroadcastReceiver;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    invoke-static {v4, v5}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$202(Lcom/android/providers/telephony/ApnBroadcastReceiver;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;

    .line 585
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "slotId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", subId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$000(Ljava/lang/String;)V

    .line 586
    invoke-static {}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$300()I

    move-result v4

    if-le v4, v14, :cond_14

    .line 587
    invoke-static {v15}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v4

    .line 588
    invoke-static {v14}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v5

    if-eqz v4, :cond_10

    .line 590
    iget-object v6, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v6}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$400(Lcom/android/providers/telephony/ApnBroadcastReceiver;)[I

    move-result-object v6

    aget v4, v4, v15

    aput v4, v6, v15

    :cond_10
    if-eqz v5, :cond_11

    .line 593
    iget-object v4, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v4}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$400(Lcom/android/providers/telephony/ApnBroadcastReceiver;)[I

    move-result-object v4

    aget v5, v5, v15

    aput v5, v4, v14

    .line 595
    :cond_11
    invoke-static {}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$300()I

    move-result v4

    sub-int/2addr v4, v14

    :goto_7
    if-ltz v4, :cond_15

    .line 596
    iget-object v5, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v5}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$400(Lcom/android/providers/telephony/ApnBroadcastReceiver;)[I

    move-result-object v5

    aget v5, v5, v4

    if-ne v3, v5, :cond_13

    const-string v5, "Check pop up when subid is matched."

    .line 597
    invoke-static {v5}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$000(Ljava/lang/String;)V

    .line 598
    iget-object v5, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    iget-boolean v6, v5, Lcom/android/providers/telephony/ApnBroadcastReceiver;->enableSMF:Z

    if-eqz v6, :cond_12

    .line 599
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v5

    invoke-virtual {v5, v2, v15}, Lcom/samsung/android/feature/SemCarrierFeature;->getCarrierId(IZ)I

    move-result v5

    .line 600
    iget-object v6, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-virtual {v6, v2, v5}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->updateDB(II)V

    goto :goto_8

    .line 602
    :cond_12
    invoke-virtual {v5, v4}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->checkPopup(I)V

    :cond_13
    :goto_8
    add-int/lit8 v4, v4, -0x1

    goto :goto_7

    .line 607
    :cond_14
    iget-object v4, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v4}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$400(Lcom/android/providers/telephony/ApnBroadcastReceiver;)[I

    move-result-object v4

    aput v3, v4, v15

    if-ltz v2, :cond_15

    .line 608
    iget-object v3, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-virtual {v3, v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->checkPopup(I)V

    .line 611
    :cond_15
    invoke-static {v2}, Lcom/android/providers/telephony/TelephonyProvider;->getSimNumeric(I)Ljava/lang/String;

    move-result-object v3

    .line 612
    iget-object v4, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3, v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$1200(Lcom/android/providers/telephony/ApnBroadcastReceiver;Ljava/lang/String;Ljava/lang/String;I)V

    .line 613
    iget-object v0, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->sendCompleteIntent()V

    .line 614
    invoke-static {}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->stopProcessLog()V

    goto/16 :goto_d

    .line 441
    :pswitch_6
    invoke-static {}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->startProcessLog()V

    const-string v2, "EVENT_CHECK_POPUP"

    .line 442
    invoke-static {v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$000(Ljava/lang/String;)V

    .line 443
    iget-object v2, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    iget-object v10, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/content/Context;

    invoke-static {v2, v10}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$102(Lcom/android/providers/telephony/ApnBroadcastReceiver;Landroid/content/Context;)Landroid/content/Context;

    .line 444
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 445
    iget v10, v1, Landroid/os/Message;->arg2:I

    .line 446
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", subscriptionId : "

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$000(Ljava/lang/String;)V

    .line 449
    new-instance v4, Ljava/io/File;

    const-string v14, "/data/user_de/0/com.android.providers.telephony/databases/nwk_info.db"

    invoke-direct {v4, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 450
    iget-object v14, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v14}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$100(Lcom/android/providers/telephony/ApnBroadcastReceiver;)Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14, v3, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const/4 v14, 0x1

    if-ne v2, v14, :cond_16

    goto :goto_9

    :cond_16
    move-object v5, v6

    :goto_9
    const/4 v6, -0x1

    .line 452
    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 453
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_25

    if-eq v6, v14, :cond_17

    goto/16 :goto_c

    .line 461
    :cond_17
    iget-object v3, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$100(Lcom/android/providers/telephony/ApnBroadcastReceiver;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    invoke-static {v3, v4}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$202(Lcom/android/providers/telephony/ApnBroadcastReceiver;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;

    .line 462
    iget-object v3, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$100(Lcom/android/providers/telephony/ApnBroadcastReceiver;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v7, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 463
    invoke-static {}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$300()I

    move-result v4

    const-string v5, "simprof.key.mccmnc"

    const-string v6, "simprof.key.nwkname"

    const-string v7, ", savedSalesCode : "

    const-string v9, "Current test sim card loaded APNs already. CurrentSalesCode : "

    const-string v12, "99999"

    const-string v14, "00101"

    const-string v15, "simprof.key.imsi.testsim"

    const/4 v1, 0x1

    if-le v4, v1, :cond_1e

    if-nez v2, :cond_18

    .line 465
    iget-object v1, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$400(Lcom/android/providers/telephony/ApnBroadcastReceiver;)[I

    move-result-object v1

    const/4 v4, 0x0

    aput v10, v1, v4

    goto :goto_a

    :cond_18
    if-ne v2, v1, :cond_19

    .line 467
    iget-object v4, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v4}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$400(Lcom/android/providers/telephony/ApnBroadcastReceiver;)[I

    move-result-object v4

    aput v10, v4, v1

    .line 469
    :cond_19
    :goto_a
    invoke-static {v2}, Lcom/android/providers/telephony/TelephonyProvider;->getSimNumeric(I)Ljava/lang/String;

    move-result-object v1

    .line 470
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v7

    const-string v7, "subId : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", slotId : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",numeric : "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$000(Ljava/lang/String;)V

    .line 471
    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 472
    iget-object v4, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v4, v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$502(Lcom/android/providers/telephony/ApnBroadcastReceiver;I)I

    .line 473
    invoke-virtual {v1, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1c

    invoke-virtual {v1, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1c

    if-eqz v3, :cond_1a

    .line 475
    iget-object v1, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$600(Lcom/android/providers/telephony/ApnBroadcastReceiver;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$500(Lcom/android/providers/telephony/ApnBroadcastReceiver;)I

    move-result v2

    iget-object v4, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v4}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$500(Lcom/android/providers/telephony/ApnBroadcastReceiver;)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->appendSimslotString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 476
    iget-object v1, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$700(Lcom/android/providers/telephony/ApnBroadcastReceiver;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$500(Lcom/android/providers/telephony/ApnBroadcastReceiver;)I

    move-result v2

    iget-object v4, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v4}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$500(Lcom/android/providers/telephony/ApnBroadcastReceiver;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->appendSimslotString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 477
    iget-object v1, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$800(Lcom/android/providers/telephony/ApnBroadcastReceiver;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$500(Lcom/android/providers/telephony/ApnBroadcastReceiver;)I

    move-result v2

    iget-object v4, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v4}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$500(Lcom/android/providers/telephony/ApnBroadcastReceiver;)I

    move-result v5

    invoke-virtual {v4, v11, v5}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->appendSimslotString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 478
    iget-object v1, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$900(Lcom/android/providers/telephony/ApnBroadcastReceiver;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$500(Lcom/android/providers/telephony/ApnBroadcastReceiver;)I

    move-result v2

    iget-object v4, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v4}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$500(Lcom/android/providers/telephony/ApnBroadcastReceiver;)I

    move-result v5

    invoke-virtual {v4, v8, v5}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->appendSimslotString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 480
    :cond_1a
    iget-object v1, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$1000(Lcom/android/providers/telephony/ApnBroadcastReceiver;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$900(Lcom/android/providers/telephony/ApnBroadcastReceiver;)[Ljava/lang/String;

    move-result-object v2

    iget-object v4, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v4}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$500(Lcom/android/providers/telephony/ApnBroadcastReceiver;)I

    move-result v4

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    iget-object v1, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$500(Lcom/android/providers/telephony/ApnBroadcastReceiver;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$1100(Lcom/android/providers/telephony/ApnBroadcastReceiver;I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 481
    :cond_1b
    iget-object v1, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$500(Lcom/android/providers/telephony/ApnBroadcastReceiver;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->checkPopup(I)V

    if-eqz v3, :cond_24

    .line 483
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 484
    iget-object v2, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$500(Lcom/android/providers/telephony/ApnBroadcastReceiver;)I

    move-result v3

    invoke-virtual {v2, v11, v3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->appendSimslotString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$800(Lcom/android/providers/telephony/ApnBroadcastReceiver;)[Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$500(Lcom/android/providers/telephony/ApnBroadcastReceiver;)I

    move-result v0

    aget-object v0, v3, v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 485
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_b

    .line 490
    :cond_1c
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_1d

    .line 492
    invoke-interface {v3, v15, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 493
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$000(Ljava/lang/String;)V

    return-void

    .line 501
    :cond_1d
    iget-object v0, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v0, v4, v1, v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$1200(Lcom/android/providers/telephony/ApnBroadcastReceiver;Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz v3, :cond_24

    .line 503
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 504
    invoke-interface {v0, v15, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 505
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_b

    :cond_1e
    move-object v1, v7

    const/4 v4, 0x0

    .line 510
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v7

    if-eqz v7, :cond_1f

    .line 512
    iget-object v10, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v10}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$400(Lcom/android/providers/telephony/ApnBroadcastReceiver;)[I

    move-result-object v10

    aget v7, v7, v4

    aput v7, v10, v4

    .line 514
    :cond_1f
    invoke-static {v4}, Lcom/android/providers/telephony/TelephonyProvider;->getSimNumeric(I)Ljava/lang/String;

    move-result-object v7

    .line 515
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 516
    invoke-static {}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->startProcessLog()V

    .line 517
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mccmnc old = "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/android/providers/telephony/ApnBroadcastReceiver;->currentMccMnc:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", new = "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",subId = "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v10}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$400(Lcom/android/providers/telephony/ApnBroadcastReceiver;)[I

    move-result-object v10

    move/from16 v16, v2

    const/4 v2, 0x0

    aget v10, v10, v2

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", slotId = "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$000(Ljava/lang/String;)V

    .line 518
    iget-object v4, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v4, v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$502(Lcom/android/providers/telephony/ApnBroadcastReceiver;I)I

    .line 519
    invoke-virtual {v7, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22

    invoke-virtual {v7, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22

    if-eqz v3, :cond_20

    .line 521
    iget-object v1, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$600(Lcom/android/providers/telephony/ApnBroadcastReceiver;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$500(Lcom/android/providers/telephony/ApnBroadcastReceiver;)I

    move-result v2

    iget-object v4, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v4}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$500(Lcom/android/providers/telephony/ApnBroadcastReceiver;)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->appendSimslotString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 522
    iget-object v1, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$700(Lcom/android/providers/telephony/ApnBroadcastReceiver;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$500(Lcom/android/providers/telephony/ApnBroadcastReceiver;)I

    move-result v2

    iget-object v4, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v4}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$500(Lcom/android/providers/telephony/ApnBroadcastReceiver;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->appendSimslotString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 523
    iget-object v1, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$800(Lcom/android/providers/telephony/ApnBroadcastReceiver;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$500(Lcom/android/providers/telephony/ApnBroadcastReceiver;)I

    move-result v2

    iget-object v4, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v4}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$500(Lcom/android/providers/telephony/ApnBroadcastReceiver;)I

    move-result v5

    invoke-virtual {v4, v11, v5}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->appendSimslotString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 524
    iget-object v1, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$900(Lcom/android/providers/telephony/ApnBroadcastReceiver;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$500(Lcom/android/providers/telephony/ApnBroadcastReceiver;)I

    move-result v2

    iget-object v4, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v4}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$500(Lcom/android/providers/telephony/ApnBroadcastReceiver;)I

    move-result v5

    invoke-virtual {v4, v8, v5}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->appendSimslotString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 526
    :cond_20
    iget-object v1, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$1000(Lcom/android/providers/telephony/ApnBroadcastReceiver;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$900(Lcom/android/providers/telephony/ApnBroadcastReceiver;)[Ljava/lang/String;

    move-result-object v2

    iget-object v4, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v4}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$500(Lcom/android/providers/telephony/ApnBroadcastReceiver;)I

    move-result v4

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$500(Lcom/android/providers/telephony/ApnBroadcastReceiver;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$1100(Lcom/android/providers/telephony/ApnBroadcastReceiver;I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 527
    :cond_21
    iget-object v1, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$500(Lcom/android/providers/telephony/ApnBroadcastReceiver;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->checkPopup(I)V

    if-eqz v3, :cond_24

    .line 529
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 530
    iget-object v2, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v2}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$500(Lcom/android/providers/telephony/ApnBroadcastReceiver;)I

    move-result v3

    invoke-virtual {v2, v11, v3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->appendSimslotString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v3}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$800(Lcom/android/providers/telephony/ApnBroadcastReceiver;)[Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$500(Lcom/android/providers/telephony/ApnBroadcastReceiver;)I

    move-result v0

    aget-object v0, v3, v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 531
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_b

    .line 536
    :cond_22
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSalesCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_23

    .line 538
    invoke-interface {v3, v15, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 539
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$000(Ljava/lang/String;)V

    return-void

    .line 546
    :cond_23
    iget-object v0, v0, Lcom/android/providers/telephony/ApnBroadcastReceiver$EventHandler;->this$0:Lcom/android/providers/telephony/ApnBroadcastReceiver;

    move/from16 v1, v16

    invoke-static {v0, v2, v7, v1}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$1200(Lcom/android/providers/telephony/ApnBroadcastReceiver;Ljava/lang/String;Ljava/lang/String;I)V

    if-eqz v3, :cond_24

    .line 548
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 549
    invoke-interface {v0, v15, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 550
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 555
    :cond_24
    :goto_b
    invoke-static {}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->stopProcessLog()V

    goto :goto_d

    :cond_25
    :goto_c
    const-string v0, "nwk_info.db not ready"

    .line 454
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    .line 456
    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 457
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 739
    :cond_26
    :goto_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finished handleMessage msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/telephony/ApnBroadcastReceiver;->access$000(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
