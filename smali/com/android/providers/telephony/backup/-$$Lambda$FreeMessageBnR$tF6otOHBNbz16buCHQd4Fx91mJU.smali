.class public final synthetic Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$tF6otOHBNbz16buCHQd4Fx91mJU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$tF6otOHBNbz16buCHQd4Fx91mJU;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$tF6otOHBNbz16buCHQd4Fx91mJU;->f$0:Ljava/lang/String;

    check-cast p1, Ljava/io/File;

    invoke-static {p0, p1}, Lcom/android/providers/telephony/backup/FreeMessageBnR;->lambda$backup$3(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method
