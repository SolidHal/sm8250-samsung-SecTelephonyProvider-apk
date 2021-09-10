.class Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;
.super Ljava/lang/Object;
.source "ApnBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/ApnBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ApnInfo"
.end annotation


# instance fields
.field public apn:Ljava/lang/String;

.field authtype:I

.field bearer:I

.field bearer_bitmask:I

.field carrier_enabled:I

.field edited:I

.field public mcc:Ljava/lang/String;

.field mmsc:Ljava/lang/String;

.field mmsport:Ljava/lang/String;

.field mmsproxy:Ljava/lang/String;

.field mnc:Ljava/lang/String;

.field modem_cognitive:Ljava/lang/String;

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

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 207
    iput-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->name:Ljava/lang/String;

    .line 208
    iput-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->numeric:Ljava/lang/String;

    .line 209
    iput-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->mcc:Ljava/lang/String;

    .line 210
    iput-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->mnc:Ljava/lang/String;

    .line 211
    iput-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->apn:Ljava/lang/String;

    .line 212
    iput-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->user:Ljava/lang/String;

    .line 213
    iput-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->server:Ljava/lang/String;

    .line 214
    iput-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->password:Ljava/lang/String;

    .line 215
    iput-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->proxy:Ljava/lang/String;

    .line 216
    iput-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->port:Ljava/lang/String;

    .line 217
    iput-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->mmsproxy:Ljava/lang/String;

    .line 218
    iput-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->mmsport:Ljava/lang/String;

    .line 219
    iput-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->mmsc:Ljava/lang/String;

    .line 221
    iput-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->type:Ljava/lang/String;

    const-string v1, "IP"

    .line 223
    iput-object v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->protocol:Ljava/lang/String;

    .line 224
    iput-object v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->roaming_protocol:Ljava/lang/String;

    const/4 v1, 0x1

    .line 225
    iput v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->carrier_enabled:I

    const/4 v2, 0x0

    .line 226
    iput v2, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->bearer:I

    .line 227
    iput v2, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->bearer_bitmask:I

    .line 228
    iput-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->mvno_type:Ljava/lang/String;

    .line 229
    iput-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->mvno_match_data:Ljava/lang/String;

    .line 232
    iput-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->modem_cognitive:Ljava/lang/String;

    .line 234
    iput v2, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->edited:I

    .line 235
    iput v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->user_visible:I

    .line 236
    iput v1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->user_editable:I

    .line 237
    iput-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->nwkname:Ljava/lang/String;

    .line 240
    iput-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->name:Ljava/lang/String;

    .line 241
    iput-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->numeric:Ljava/lang/String;

    .line 242
    iput-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->mcc:Ljava/lang/String;

    .line 243
    iput-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->mnc:Ljava/lang/String;

    .line 244
    iput-object v0, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$ApnInfo;->apn:Ljava/lang/String;

    return-void
.end method
