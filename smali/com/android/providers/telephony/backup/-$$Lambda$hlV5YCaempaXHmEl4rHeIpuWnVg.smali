.class public final synthetic Lcom/android/providers/telephony/backup/-$$Lambda$hlV5YCaempaXHmEl4rHeIpuWnVg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/providers/telephony/backup/-$$Lambda$hlV5YCaempaXHmEl4rHeIpuWnVg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/providers/telephony/backup/-$$Lambda$hlV5YCaempaXHmEl4rHeIpuWnVg;

    invoke-direct {v0}, Lcom/android/providers/telephony/backup/-$$Lambda$hlV5YCaempaXHmEl4rHeIpuWnVg;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/backup/-$$Lambda$hlV5YCaempaXHmEl4rHeIpuWnVg;->INSTANCE:Lcom/android/providers/telephony/backup/-$$Lambda$hlV5YCaempaXHmEl4rHeIpuWnVg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method
