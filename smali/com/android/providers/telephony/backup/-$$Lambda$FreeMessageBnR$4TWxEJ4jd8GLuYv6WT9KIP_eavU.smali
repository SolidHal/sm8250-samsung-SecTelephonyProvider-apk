.class public final synthetic Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$4TWxEJ4jd8GLuYv6WT9KIP_eavU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$4TWxEJ4jd8GLuYv6WT9KIP_eavU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$4TWxEJ4jd8GLuYv6WT9KIP_eavU;

    invoke-direct {v0}, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$4TWxEJ4jd8GLuYv6WT9KIP_eavU;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$4TWxEJ4jd8GLuYv6WT9KIP_eavU;->INSTANCE:Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$4TWxEJ4jd8GLuYv6WT9KIP_eavU;

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

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lcom/android/providers/telephony/backup/FreeMessageBnR;->lambda$isPermissionsDenied$0(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method
