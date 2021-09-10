.class public final synthetic Lcom/android/providers/telephony/backup/-$$Lambda$MessageBnR$NUJZX8CcjMJ37Mp76yoKH1DAtxw;
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

    iput-object p1, p0, Lcom/android/providers/telephony/backup/-$$Lambda$MessageBnR$NUJZX8CcjMJ37Mp76yoKH1DAtxw;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/providers/telephony/backup/-$$Lambda$MessageBnR$NUJZX8CcjMJ37Mp76yoKH1DAtxw;->f$0:Ljava/lang/String;

    check-cast p1, Ljava/io/File;

    invoke-static {p0, p1}, Lcom/android/providers/telephony/backup/MessageBnR;->lambda$backup$2(Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method
