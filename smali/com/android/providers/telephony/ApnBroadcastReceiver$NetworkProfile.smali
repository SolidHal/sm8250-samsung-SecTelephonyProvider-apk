.class Lcom/android/providers/telephony/ApnBroadcastReceiver$NetworkProfile;
.super Ljava/lang/Object;
.source "ApnBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/ApnBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkProfile"
.end annotation


# instance fields
.field codetype:Ljava/lang/String;

.field numeric:Ljava/lang/String;

.field nwkname:Ljava/lang/String;

.field spcode:Ljava/lang/String;

.field spname:Ljava/lang/String;

.field subsetcode:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object p1, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$NetworkProfile;->nwkname:Ljava/lang/String;

    .line 197
    iput-object p2, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$NetworkProfile;->numeric:Ljava/lang/String;

    .line 198
    iput-object p3, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$NetworkProfile;->codetype:Ljava/lang/String;

    .line 199
    iput-object p4, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$NetworkProfile;->subsetcode:Ljava/lang/String;

    .line 200
    iput-object p5, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$NetworkProfile;->spcode:Ljava/lang/String;

    .line 201
    iput-object p6, p0, Lcom/android/providers/telephony/ApnBroadcastReceiver$NetworkProfile;->spname:Ljava/lang/String;

    return-void
.end method
