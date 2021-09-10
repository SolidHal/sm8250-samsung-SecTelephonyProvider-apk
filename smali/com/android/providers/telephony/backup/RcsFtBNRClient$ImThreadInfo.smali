.class Lcom/android/providers/telephony/backup/RcsFtBNRClient$ImThreadInfo;
.super Ljava/lang/Object;
.source "RcsFtBNRClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/backup/RcsFtBNRClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImThreadInfo"
.end annotation


# instance fields
.field public addrs:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public alias:Ljava/lang/String;

.field public convType:I

.field public imContributionId:Ljava/lang/String;

.field public imConversationId:Ljava/lang/String;

.field public sessionUri:Ljava/lang/String;

.field public simImsi:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/telephony/backup/RcsFtBNRClient$1;)V
    .locals 0

    .line 159
    invoke-direct {p0}, Lcom/android/providers/telephony/backup/RcsFtBNRClient$ImThreadInfo;-><init>()V

    return-void
.end method
