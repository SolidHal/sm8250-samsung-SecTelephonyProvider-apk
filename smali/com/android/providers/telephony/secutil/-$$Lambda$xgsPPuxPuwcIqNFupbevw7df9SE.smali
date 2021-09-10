.class public final synthetic Lcom/android/providers/telephony/secutil/-$$Lambda$xgsPPuxPuwcIqNFupbevw7df9SE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/database/MatrixCursor;


# direct methods
.method public synthetic constructor <init>(Landroid/database/MatrixCursor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/providers/telephony/secutil/-$$Lambda$xgsPPuxPuwcIqNFupbevw7df9SE;->f$0:Landroid/database/MatrixCursor;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/providers/telephony/secutil/-$$Lambda$xgsPPuxPuwcIqNFupbevw7df9SE;->f$0:Landroid/database/MatrixCursor;

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-void
.end method
