.class public final synthetic Lcom/android/providers/telephony/-$$Lambda$0AiRL9suPf7o1_c8HvQdRaQo1MA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/providers/telephony/-$$Lambda$0AiRL9suPf7o1_c8HvQdRaQo1MA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/providers/telephony/-$$Lambda$0AiRL9suPf7o1_c8HvQdRaQo1MA;

    invoke-direct {v0}, Lcom/android/providers/telephony/-$$Lambda$0AiRL9suPf7o1_c8HvQdRaQo1MA;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/-$$Lambda$0AiRL9suPf7o1_c8HvQdRaQo1MA;->INSTANCE:Lcom/android/providers/telephony/-$$Lambda$0AiRL9suPf7o1_c8HvQdRaQo1MA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/providers/telephony/SqlQueryChecker;->checkToken(Ljava/lang/String;)V

    return-void
.end method
