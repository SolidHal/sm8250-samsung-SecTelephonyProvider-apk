.class Lcom/android/providers/telephony/TelephonyProvider$NwkInfo;
.super Ljava/lang/Object;
.source "TelephonyProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/TelephonyProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NwkInfo"
.end annotation


# instance fields
.field codetype:Ljava/lang/String;

.field iccid:Ljava/lang/String;

.field nwkName:Ljava/lang/String;

.field plmn:Ljava/lang/String;

.field salesCode:Ljava/lang/String;

.field spCode:Ljava/lang/String;

.field spName:Ljava/lang/String;

.field subsetCode:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 7743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/telephony/TelephonyProvider$1;)V
    .locals 0

    .line 7743
    invoke-direct {p0}, Lcom/android/providers/telephony/TelephonyProvider$NwkInfo;-><init>()V

    return-void
.end method
