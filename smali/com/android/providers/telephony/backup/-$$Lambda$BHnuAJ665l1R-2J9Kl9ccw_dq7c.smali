.class public final synthetic Lcom/android/providers/telephony/backup/-$$Lambda$BHnuAJ665l1R-2J9Kl9ccw_dq7c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/providers/telephony/backup/-$$Lambda$BHnuAJ665l1R-2J9Kl9ccw_dq7c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/providers/telephony/backup/-$$Lambda$BHnuAJ665l1R-2J9Kl9ccw_dq7c;

    invoke-direct {v0}, Lcom/android/providers/telephony/backup/-$$Lambda$BHnuAJ665l1R-2J9Kl9ccw_dq7c;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/backup/-$$Lambda$BHnuAJ665l1R-2J9Kl9ccw_dq7c;->INSTANCE:Lcom/android/providers/telephony/backup/-$$Lambda$BHnuAJ665l1R-2J9Kl9ccw_dq7c;

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

    new-instance p0, Ljava/io/File;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
