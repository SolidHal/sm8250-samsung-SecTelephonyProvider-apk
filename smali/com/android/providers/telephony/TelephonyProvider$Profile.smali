.class Lcom/android/providers/telephony/TelephonyProvider$Profile;
.super Ljava/lang/Object;
.source "TelephonyProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/TelephonyProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Profile"
.end annotation


# instance fields
.field apn:Ljava/lang/String;

.field authType:Ljava/lang/String;

.field bearer:Ljava/lang/String;

.field editable:Ljava/lang/String;

.field enableStatus:Ljava/lang/String;

.field hiddenStatus:Ljava/lang/String;

.field ipVersion:Ljava/lang/String;

.field modemCognitive:I

.field mtu:I

.field nwkName:Ljava/lang/String;

.field password:Ljava/lang/String;

.field port:Ljava/lang/String;

.field profName:Ljava/lang/String;

.field profileId:I

.field proxy:Ljava/lang/String;

.field roamingEnableStatus:Ljava/lang/String;

.field roamingIpVersion:Ljava/lang/String;

.field skip464Xlat:I

.field url:Ljava/lang/String;

.field userId:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 7778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/telephony/TelephonyProvider$1;)V
    .locals 0

    .line 7778
    invoke-direct {p0}, Lcom/android/providers/telephony/TelephonyProvider$Profile;-><init>()V

    return-void
.end method
