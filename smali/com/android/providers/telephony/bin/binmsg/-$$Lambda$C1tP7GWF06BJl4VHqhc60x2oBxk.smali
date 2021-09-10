.class public final synthetic Lcom/android/providers/telephony/bin/binmsg/-$$Lambda$C1tP7GWF06BJl4VHqhc60x2oBxk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/providers/telephony/bin/binmsg/-$$Lambda$C1tP7GWF06BJl4VHqhc60x2oBxk;->f$0:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/providers/telephony/bin/binmsg/-$$Lambda$C1tP7GWF06BJl4VHqhc60x2oBxk;->f$0:Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
