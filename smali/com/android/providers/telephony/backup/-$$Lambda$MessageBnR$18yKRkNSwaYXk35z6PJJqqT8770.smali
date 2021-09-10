.class public final synthetic Lcom/android/providers/telephony/backup/-$$Lambda$MessageBnR$18yKRkNSwaYXk35z6PJJqqT8770;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/providers/telephony/backup/-$$Lambda$MessageBnR$18yKRkNSwaYXk35z6PJJqqT8770;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/providers/telephony/backup/-$$Lambda$MessageBnR$18yKRkNSwaYXk35z6PJJqqT8770;

    invoke-direct {v0}, Lcom/android/providers/telephony/backup/-$$Lambda$MessageBnR$18yKRkNSwaYXk35z6PJJqqT8770;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/backup/-$$Lambda$MessageBnR$18yKRkNSwaYXk35z6PJJqqT8770;->INSTANCE:Lcom/android/providers/telephony/backup/-$$Lambda$MessageBnR$18yKRkNSwaYXk35z6PJJqqT8770;

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

    check-cast p1, Ljava/io/File;

    invoke-static {p1}, Lcom/android/providers/telephony/backup/MessageBnR;->lambda$backup$1(Ljava/io/File;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
