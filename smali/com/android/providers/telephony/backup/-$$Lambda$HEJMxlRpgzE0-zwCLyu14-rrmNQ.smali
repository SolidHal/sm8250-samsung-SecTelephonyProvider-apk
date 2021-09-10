.class public final synthetic Lcom/android/providers/telephony/backup/-$$Lambda$HEJMxlRpgzE0-zwCLyu14-rrmNQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/providers/telephony/backup/-$$Lambda$HEJMxlRpgzE0-zwCLyu14-rrmNQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/providers/telephony/backup/-$$Lambda$HEJMxlRpgzE0-zwCLyu14-rrmNQ;

    invoke-direct {v0}, Lcom/android/providers/telephony/backup/-$$Lambda$HEJMxlRpgzE0-zwCLyu14-rrmNQ;-><init>()V

    sput-object v0, Lcom/android/providers/telephony/backup/-$$Lambda$HEJMxlRpgzE0-zwCLyu14-rrmNQ;->INSTANCE:Lcom/android/providers/telephony/backup/-$$Lambda$HEJMxlRpgzE0-zwCLyu14-rrmNQ;

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

    new-instance p0, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method
