.class public final synthetic Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$qXfJmqtUzXvOO0ve4hWSQIZrbXQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/providers/telephony/backup/FreeMessageBnR;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:I

.field public final synthetic f$5:Ljava/lang/String;

.field public final synthetic f$6:I

.field public final synthetic f$7:I

.field public final synthetic f$8:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/providers/telephony/backup/FreeMessageBnR;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$qXfJmqtUzXvOO0ve4hWSQIZrbXQ;->f$0:Lcom/android/providers/telephony/backup/FreeMessageBnR;

    iput-object p2, p0, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$qXfJmqtUzXvOO0ve4hWSQIZrbXQ;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$qXfJmqtUzXvOO0ve4hWSQIZrbXQ;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$qXfJmqtUzXvOO0ve4hWSQIZrbXQ;->f$3:Ljava/lang/String;

    iput p5, p0, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$qXfJmqtUzXvOO0ve4hWSQIZrbXQ;->f$4:I

    iput-object p6, p0, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$qXfJmqtUzXvOO0ve4hWSQIZrbXQ;->f$5:Ljava/lang/String;

    iput p7, p0, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$qXfJmqtUzXvOO0ve4hWSQIZrbXQ;->f$6:I

    iput p8, p0, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$qXfJmqtUzXvOO0ve4hWSQIZrbXQ;->f$7:I

    iput p9, p0, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$qXfJmqtUzXvOO0ve4hWSQIZrbXQ;->f$8:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$qXfJmqtUzXvOO0ve4hWSQIZrbXQ;->f$0:Lcom/android/providers/telephony/backup/FreeMessageBnR;

    iget-object v1, p0, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$qXfJmqtUzXvOO0ve4hWSQIZrbXQ;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$qXfJmqtUzXvOO0ve4hWSQIZrbXQ;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$qXfJmqtUzXvOO0ve4hWSQIZrbXQ;->f$3:Ljava/lang/String;

    iget v4, p0, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$qXfJmqtUzXvOO0ve4hWSQIZrbXQ;->f$4:I

    iget-object v5, p0, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$qXfJmqtUzXvOO0ve4hWSQIZrbXQ;->f$5:Ljava/lang/String;

    iget v6, p0, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$qXfJmqtUzXvOO0ve4hWSQIZrbXQ;->f$6:I

    iget v7, p0, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$qXfJmqtUzXvOO0ve4hWSQIZrbXQ;->f$7:I

    iget v8, p0, Lcom/android/providers/telephony/backup/-$$Lambda$FreeMessageBnR$qXfJmqtUzXvOO0ve4hWSQIZrbXQ;->f$8:I

    invoke-virtual/range {v0 .. v8}, Lcom/android/providers/telephony/backup/FreeMessageBnR;->lambda$onReceive$2$FreeMessageBnR(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    return-void
.end method
