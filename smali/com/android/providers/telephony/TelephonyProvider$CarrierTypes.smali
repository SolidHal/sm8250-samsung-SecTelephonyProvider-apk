.class Lcom/android/providers/telephony/TelephonyProvider$CarrierTypes;
.super Ljava/lang/Object;
.source "TelephonyProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/TelephonyProvider;
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

    .line 7973
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7974
    iput-boolean v0, p0, Lcom/android/providers/telephony/TelephonyProvider$CarrierTypes;->isEnableDefault:Z

    .line 7975
    iput-boolean v0, p0, Lcom/android/providers/telephony/TelephonyProvider$CarrierTypes;->isEnableMms:Z

    .line 7976
    iput-boolean v0, p0, Lcom/android/providers/telephony/TelephonyProvider$CarrierTypes;->isEnableSUPL:Z

    .line 7977
    iput-boolean v0, p0, Lcom/android/providers/telephony/TelephonyProvider$CarrierTypes;->isEnableDun:Z

    .line 7978
    iput-boolean v0, p0, Lcom/android/providers/telephony/TelephonyProvider$CarrierTypes;->isEnableHIPRI:Z

    .line 7979
    iput-boolean v0, p0, Lcom/android/providers/telephony/TelephonyProvider$CarrierTypes;->isEnableCbs:Z

    .line 7980
    iput-boolean v0, p0, Lcom/android/providers/telephony/TelephonyProvider$CarrierTypes;->isEnableFOTA:Z

    .line 7981
    iput-boolean v0, p0, Lcom/android/providers/telephony/TelephonyProvider$CarrierTypes;->isEnableIms:Z

    .line 7982
    iput-boolean v0, p0, Lcom/android/providers/telephony/TelephonyProvider$CarrierTypes;->isEnableXcap:Z

    .line 7983
    iput-boolean v0, p0, Lcom/android/providers/telephony/TelephonyProvider$CarrierTypes;->isEnableIa:Z

    .line 7984
    iput-boolean v0, p0, Lcom/android/providers/telephony/TelephonyProvider$CarrierTypes;->isEnableEmergencyIMSCall:Z

    .line 7985
    iput-boolean v0, p0, Lcom/android/providers/telephony/TelephonyProvider$CarrierTypes;->isEnableEmail:Z

    .line 7986
    iput-boolean v0, p0, Lcom/android/providers/telephony/TelephonyProvider$CarrierTypes;->isEnableMcx:Z

    .line 7987
    iput-boolean v0, p0, Lcom/android/providers/telephony/TelephonyProvider$CarrierTypes;->isEnableFoc:Z

    .line 7988
    iput-boolean v0, p0, Lcom/android/providers/telephony/TelephonyProvider$CarrierTypes;->isEnableRcs:Z

    .line 7989
    iput-boolean v0, p0, Lcom/android/providers/telephony/TelephonyProvider$CarrierTypes;->isEnableBip:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/telephony/TelephonyProvider$1;)V
    .locals 0

    .line 7973
    invoke-direct {p0}, Lcom/android/providers/telephony/TelephonyProvider$CarrierTypes;-><init>()V

    return-void
.end method
