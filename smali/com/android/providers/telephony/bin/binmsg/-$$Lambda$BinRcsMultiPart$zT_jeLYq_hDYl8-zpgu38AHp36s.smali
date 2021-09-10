.class public final synthetic Lcom/android/providers/telephony/bin/binmsg/-$$Lambda$BinRcsMultiPart$zT_jeLYq_hDYl8-zpgu38AHp36s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/HashMap;

.field public final synthetic f$1:Ljava/util/HashMap;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/providers/telephony/bin/binmsg/-$$Lambda$BinRcsMultiPart$zT_jeLYq_hDYl8-zpgu38AHp36s;->f$0:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/android/providers/telephony/bin/binmsg/-$$Lambda$BinRcsMultiPart$zT_jeLYq_hDYl8-zpgu38AHp36s;->f$1:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/android/providers/telephony/bin/binmsg/-$$Lambda$BinRcsMultiPart$zT_jeLYq_hDYl8-zpgu38AHp36s;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/providers/telephony/bin/binmsg/-$$Lambda$BinRcsMultiPart$zT_jeLYq_hDYl8-zpgu38AHp36s;->f$0:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/providers/telephony/bin/binmsg/-$$Lambda$BinRcsMultiPart$zT_jeLYq_hDYl8-zpgu38AHp36s;->f$1:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/android/providers/telephony/bin/binmsg/-$$Lambda$BinRcsMultiPart$zT_jeLYq_hDYl8-zpgu38AHp36s;->f$2:Ljava/lang/String;

    check-cast p1, Ljava/lang/Long;

    check-cast p2, Ljava/lang/Long;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/providers/telephony/bin/binmsg/BinRcsMultiPart;->lambda$updateResultBundle$1(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method
