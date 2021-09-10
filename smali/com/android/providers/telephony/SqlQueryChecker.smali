.class public Lcom/android/providers/telephony/SqlQueryChecker;
.super Ljava/lang/Object;
.source "SqlQueryChecker.java"


# direct methods
.method static checkQueryParametersForSubqueries([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 36
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 37
    sget-object v4, Lcom/android/providers/telephony/-$$Lambda$0AiRL9suPf7o1_c8HvQdRaQo1MA;->INSTANCE:Lcom/android/providers/telephony/-$$Lambda$0AiRL9suPf7o1_c8HvQdRaQo1MA;

    invoke-static {v3, v0, v4}, Lcom/android/providers/telephony/SQLiteTokenizer;->tokenize(Ljava/lang/String;ILjava/util/function/Consumer;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 41
    :cond_0
    sget-object p0, Lcom/android/providers/telephony/-$$Lambda$0AiRL9suPf7o1_c8HvQdRaQo1MA;->INSTANCE:Lcom/android/providers/telephony/-$$Lambda$0AiRL9suPf7o1_c8HvQdRaQo1MA;

    invoke-static {p1, v0, p0}, Lcom/android/providers/telephony/SQLiteTokenizer;->tokenize(Ljava/lang/String;ILjava/util/function/Consumer;)V

    .line 43
    sget-object p0, Lcom/android/providers/telephony/-$$Lambda$0AiRL9suPf7o1_c8HvQdRaQo1MA;->INSTANCE:Lcom/android/providers/telephony/-$$Lambda$0AiRL9suPf7o1_c8HvQdRaQo1MA;

    invoke-static {p2, v0, p0}, Lcom/android/providers/telephony/SQLiteTokenizer;->tokenize(Ljava/lang/String;ILjava/util/function/Consumer;)V

    return-void
.end method

.method static checkToken(Ljava/lang/String;)V
    .locals 1

    .line 23
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "select"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 24
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "SELECT token not allowed in query"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
