.class Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;
.super Ljava/lang/Object;
.source "ApnBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/ApnBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CarrierTypes"
.end annotation


# instance fields
.field isEnableBip:Z

.field isEnableCbs:Z

.field isEnableDefault:Z

.field isEnableDun:Z

.field isEnableEmail:Z

.field isEnableEmergencyIMSCall:Z

.field isEnableFOTA:Z

.field isEnableFoc:Z

.field isEnableHIPRI:Z

.field isEnableIa:Z

.field isEnableIms:Z

.field isEnableMcx:Z

.field isEnableMms:Z

.field isEnableRcs:Z

.field isEnableSUPL:Z

.field isEnableXcap:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1778
    iput-boolean v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableDefault:Z

    .line 1779
    iput-boolean v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableMms:Z

    .line 1780
    iput-boolean v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableSUPL:Z

    .line 1781
    iput-boolean v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableDun:Z

    .line 1782
    iput-boolean v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableHIPRI:Z

    .line 1783
    iput-boolean v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableCbs:Z

    .line 1784
    iput-boolean v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableFOTA:Z

    .line 1785
    iput-boolean v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableIms:Z

    .line 1786
    iput-boolean v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableXcap:Z

    .line 1787
    iput-boolean v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableIa:Z

    .line 1788
    iput-boolean v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableEmergencyIMSCall:Z

    .line 1789
    iput-boolean v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableEmail:Z

    .line 1790
    iput-boolean v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableMcx:Z

    .line 1791
    iput-boolean v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableFoc:Z

    .line 1792
    iput-boolean v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableRcs:Z

    .line 1793
    iput-boolean v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;->isEnableBip:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/telephony/ApnBroadcastReceiver$1;)V
    .locals 0

    .line 1777
    invoke-direct {p0}, Lcom/android/providers/telephony/ApnBroadcastReceiver$CarrierTypes;-><init>()V

    return-void
.end method
