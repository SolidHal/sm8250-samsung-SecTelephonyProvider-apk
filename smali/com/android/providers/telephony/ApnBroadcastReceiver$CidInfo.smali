.class Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;
.super Ljava/lang/Object;
.source "ApnBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/ApnBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CidInfo"
.end annotation


# instance fields
.field public apn:Ljava/lang/String;

.field authtype:I

.field bearer:I

.field bearer_bitmask:I

.field carrier_enabled:I

.field public cid:I

.field device_class:Ljava/lang/String;

.field edited:I

.field public mcc:Ljava/lang/String;

.field mmsc:Ljava/lang/String;

.field mmsport:Ljava/lang/String;

.field mmsproxy:Ljava/lang/String;

.field mnc:Ljava/lang/String;

.field modem_cognitive:I

.field mtu:I

.field mvno_match_data:Ljava/lang/String;

.field mvno_type:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field numeric:Ljava/lang/String;

.field nwkname:Ljava/lang/String;

.field password:Ljava/lang/String;

.field port:Ljava/lang/String;

.field profile_id:I

.field protocol:Ljava/lang/String;

.field proxy:Ljava/lang/String;

.field roaming_protocol:Ljava/lang/String;

.field server:Ljava/lang/String;

.field public sim_slot:I

.field sub_id:I

.field public type:Ljava/lang/String;

.field public user:Ljava/lang/String;

.field user_editable:I

.field user_visible:I


# direct methods
.method constructor <init>()V
    .locals 3

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 251
    iput-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->name:Ljava/lang/String;

    .line 252
    iput-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->numeric:Ljava/lang/String;

    .line 253
    iput-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->mcc:Ljava/lang/String;

    .line 254
    iput-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->mnc:Ljava/lang/String;

    .line 255
    iput-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->apn:Ljava/lang/String;

    .line 256
    iput-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->user:Ljava/lang/String;

    .line 257
    iput-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->server:Ljava/lang/String;

    .line 258
    iput-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->password:Ljava/lang/String;

    .line 259
    iput-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->proxy:Ljava/lang/String;

    .line 260
    iput-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->port:Ljava/lang/String;

    .line 261
    iput-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->mmsproxy:Ljava/lang/String;

    .line 262
    iput-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->mmsport:Ljava/lang/String;

    .line 263
    iput-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->mmsc:Ljava/lang/String;

    .line 265
    iput-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->type:Ljava/lang/String;

    const-string v1, "IP"

    .line 269
    iput-object v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->protocol:Ljava/lang/String;

    .line 270
    iput-object v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->roaming_protocol:Ljava/lang/String;

    const/4 v1, 0x1

    .line 271
    iput v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->carrier_enabled:I

    const/4 v2, 0x0

    .line 272
    iput v2, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->bearer:I

    .line 273
    iput v2, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->bearer_bitmask:I

    .line 274
    iput-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->mvno_type:Ljava/lang/String;

    .line 275
    iput-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->mvno_match_data:Ljava/lang/String;

    .line 280
    iput v2, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->edited:I

    .line 281
    iput v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->user_visible:I

    .line 282
    iput v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->user_editable:I

    .line 283
    iput-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->nwkname:Ljava/lang/String;

    .line 284
    iput-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->device_class:Ljava/lang/String;

    .line 287
    iput-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->name:Ljava/lang/String;

    .line 288
    iput-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->numeric:Ljava/lang/String;

    .line 289
    iput-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->mcc:Ljava/lang/String;

    .line 290
    iput-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->mnc:Ljava/lang/String;

    .line 291
    iput-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$CidInfo;->apn:Ljava/lang/String;

    return-void
.end method
