.class public Lcom/android/providers/telephony/MmsSmsProvider$TimeChecker;
.super Ljava/lang/Object;
.source "MmsSmsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/MmsSmsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeChecker"
.end annotation


# static fields
.field private static sStartT:J


# direct methods
.method public static sEnd()Ljava/lang/String;
    .locals 8

    .line 5633
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-wide v2, Lcom/android/providers/telephony/MmsSmsProvider$TimeChecker;->sStartT:J

    sub-long/2addr v0, v2

    .line 5636
    :try_start_0
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "Elapsed time : %.3f ms"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    long-to-double v0, v0

    const-wide v6, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5638
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/IncompatibleClassChangeError;->printStackTrace(Ljava/io/PrintStream;)V

    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public static sStart()V
    .locals 2

    .line 5629
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/android/providers/telephony/MmsSmsProvider$TimeChecker;->sStartT:J

    return-void
.end method
