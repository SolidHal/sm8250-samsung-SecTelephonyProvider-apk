.class public final synthetic Lcom/android/providers/telephony/backup/-$$Lambda$MessageBnR$5kmdwkVoyoppgSijoLHwKHqKsDI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/providers/telephony/backup/-$$Lambda$MessageBnR$5kmdwkVoyoppgSijoLHwKHqKsDI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/providers/telephony/backup/-$$Lambda$MessageBnR$5kmdwkVoyoppgSijoLHwKHqKsDI;

    invoke-direct {v0}, Lcom/android/providers/telephony/backup/-$$Lambda$MessageBnR$5kmdwkVoyoppgSijoLHwKHqKsDI;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/backup/-$$Lambda$MessageBnR$5kmdwkVoyoppgSijoLHwKHqKsDI;->INSTANCE:Lcom/android/providers/telephony/backup/-$$Lambda$MessageBnR$5kmdwkVoyoppgSijoLHwKHqKsDI;

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

    invoke-static {p1}, Lcom/android/providers/telephony/backup/MessageBnR;->lambda$backup$3(Ljava/io/File;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
