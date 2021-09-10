.class public final synthetic Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$rghJsnttu9HKmAf6rjOnmGYX7Bs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$rghJsnttu9HKmAf6rjOnmGYX7Bs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$rghJsnttu9HKmAf6rjOnmGYX7Bs;

    invoke-direct {v0}, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$rghJsnttu9HKmAf6rjOnmGYX7Bs;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$rghJsnttu9HKmAf6rjOnmGYX7Bs;->INSTANCE:Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$rghJsnttu9HKmAf6rjOnmGYX7Bs;

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

    invoke-static {p1}, Lcom/android/providers/telephony/backup/FreeMessageBnR;->lambda$updateFtFilePath$5(Lcom/android/providers/telephony/backup/BnRUtils$RcsFtFileInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
