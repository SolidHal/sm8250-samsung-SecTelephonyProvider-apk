.class public final synthetic Lcom/android/providers/telephony/bin/binmsg/-$$Lambda$OILEILjHfhv-y1hLyK1aFuHFsIY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/providers/telephony/bin/binmsg/-$$Lambda$OILEILjHfhv-y1hLyK1aFuHFsIY;->f$0:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/providers/telephony/bin/binmsg/-$$Lambda$OILEILjHfhv-y1hLyK1aFuHFsIY;->f$0:Landroid/os/Bundle;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
