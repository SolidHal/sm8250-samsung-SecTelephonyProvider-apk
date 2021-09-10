.class public Lcom/android/providers/telephony/SQLiteTokenizer;
.super Ljava/lang/Object;
.source "SQLiteTokenizer.java"


# direct methods
.method private static genException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " in \'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isAlNum(C)Z
    .locals 1

    .line 49
    invoke-static {p0}, Lcom/android/providers/telephony/SQLiteTokenizer;->isAlpha(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/providers/telephony/SQLiteTokenizer;->isNum(C)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isAlpha(C)Z
    .locals 1

    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x5f

    if-ne p0, v0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isAnyOf(CLjava/lang/String;)Z
    .locals 0

    .line 53
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isNum(C)Z
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static peek(Ljava/lang/String;I)C
    .locals 1

    .line 61
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static tokenize(Ljava/lang/String;ILjava/util/function/Consumer;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 94
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_11

    .line 96
    invoke-static {p0, v0}, Lcom/android/providers/telephony/SQLiteTokenizer;->peek(Ljava/lang/String;I)C

    move-result v2

    .line 99
    invoke-static {v2}, Lcom/android/providers/telephony/SQLiteTokenizer;->isAlpha(C)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v2, v0, 0x1

    .line 102
    :goto_1
    invoke-static {p0, v2}, Lcom/android/providers/telephony/SQLiteTokenizer;->peek(Ljava/lang/String;I)C

    move-result v3

    invoke-static {v3}, Lcom/android/providers/telephony/SQLiteTokenizer;->isAlNum(C)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 107
    :cond_1
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    move v0, v2

    goto :goto_0

    :cond_2
    const-string v3, "\'\"`"

    .line 114
    invoke-static {v2, v3}, Lcom/android/providers/telephony/SQLiteTokenizer;->isAnyOf(CLjava/lang/String;)Z

    move-result v3

    const-string v4, "Unterminated quote"

    const-string v5, "Non-token detected"

    const/4 v6, 0x0

    if-eqz v3, :cond_8

    add-int/lit8 v0, v0, 0x1

    move v3, v0

    .line 119
    :goto_2
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ltz v3, :cond_7

    add-int/lit8 v7, v3, 0x1

    .line 123
    invoke-static {p0, v7}, Lcom/android/providers/telephony/SQLiteTokenizer;->peek(Ljava/lang/String;I)C

    move-result v8

    if-eq v8, v2, :cond_6

    const/16 v4, 0x27

    if-eq v2, v4, :cond_4

    .line 134
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_3

    .line 140
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    :cond_3
    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_5

    :goto_3
    move v0, v7

    goto :goto_0

    .line 148
    :cond_5
    invoke-static {v5, p0}, Lcom/android/providers/telephony/SQLiteTokenizer;->genException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    throw v6

    :cond_6
    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    .line 121
    :cond_7
    invoke-static {v4, p0}, Lcom/android/providers/telephony/SQLiteTokenizer;->genException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    throw v6

    :cond_8
    const/16 v3, 0x5b

    if-ne v2, v3, :cond_a

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x5d

    .line 158
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-ltz v2, :cond_9

    add-int/lit8 v3, v2, 0x1

    .line 165
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-interface {p2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    move v0, v3

    goto/16 :goto_0

    .line 160
    :cond_9
    invoke-static {v4, p0}, Lcom/android/providers/telephony/SQLiteTokenizer;->genException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    throw v6

    :cond_a
    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_10

    const-string v3, "Unterminated comment"

    const/16 v4, 0x2d

    if-ne v2, v4, :cond_c

    add-int/lit8 v5, v0, 0x1

    .line 175
    invoke-static {p0, v5}, Lcom/android/providers/telephony/SQLiteTokenizer;->peek(Ljava/lang/String;I)C

    move-result v5

    if-ne v5, v4, :cond_c

    add-int/lit8 v0, v0, 0x2

    const/16 v2, 0xa

    .line 177
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ltz v0, :cond_b

    goto :goto_4

    .line 180
    :cond_b
    invoke-static {v3, p0}, Lcom/android/providers/telephony/SQLiteTokenizer;->genException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    throw v6

    :cond_c
    const/16 v4, 0x2f

    if-ne v2, v4, :cond_e

    add-int/lit8 v4, v0, 0x1

    .line 186
    invoke-static {p0, v4}, Lcom/android/providers/telephony/SQLiteTokenizer;->peek(Ljava/lang/String;I)C

    move-result v4

    const/16 v5, 0x2a

    if-ne v4, v5, :cond_e

    add-int/lit8 v0, v0, 0x2

    const-string v2, "*/"

    .line 188
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_d

    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_0

    .line 190
    :cond_d
    invoke-static {v3, p0}, Lcom/android/providers/telephony/SQLiteTokenizer;->genException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    throw v6

    :cond_e
    const/16 v3, 0x3b

    if-eq v2, v3, :cond_f

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_f
    const-string p1, "Semicolon is not allowed"

    .line 199
    invoke-static {p1, p0}, Lcom/android/providers/telephony/SQLiteTokenizer;->genException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    throw v6

    .line 171
    :cond_10
    invoke-static {v5, p0}, Lcom/android/providers/telephony/SQLiteTokenizer;->genException(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    throw v6

    :cond_11
    return-void
.end method
