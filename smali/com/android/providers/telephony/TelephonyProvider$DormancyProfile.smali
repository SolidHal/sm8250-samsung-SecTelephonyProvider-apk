.class Lcom/android/providers/telephony/TelephonyProvider$DormancyProfile;
.super Ljava/lang/Object;
.source "TelephonyProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/TelephonyProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DormancyProfile"
.end annotation


# instance fields
.field enable:Ljava/lang/String;

.field lcdStatus:Ljava/lang/String;

.field nwkname:Ljava/lang/String;

.field timeout:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 7992
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/telephony/TelephonyProvider$1;)V
    .locals 0

    .line 7992
    invoke-direct {p0}, Lcom/android/providers/telephony/TelephonyProvider$DormancyProfile;-><init>()V

    return-void
.end method
