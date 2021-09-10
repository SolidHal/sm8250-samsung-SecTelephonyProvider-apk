.class public final synthetic Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$6QjzqvC02jbUTq_VHLZ1VLQTsZI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$6QjzqvC02jbUTq_VHLZ1VLQTsZI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$6QjzqvC02jbUTq_VHLZ1VLQTsZI;

    invoke-direct {v0}, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$6QjzqvC02jbUTq_VHLZ1VLQTsZI;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$6QjzqvC02jbUTq_VHLZ1VLQTsZI;->INSTANCE:Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$6QjzqvC02jbUTq_VHLZ1VLQTsZI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/providers/telephony/backup/BnRUtils$RcsFtFileInfo;

    invoke-static {p1}, Lcom/android/providers/telephony/backup/FreeMessageBnR;->lambda$restoreTable$4(Lcom/android/providers/telephony/backup/BnRUtils$RcsFtFileInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
