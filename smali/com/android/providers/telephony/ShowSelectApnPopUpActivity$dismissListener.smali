.class public Lcom/android/providers/telephony/ShowSelectApnPopUpActivity$dismissListener;
.super Ljava/lang/Object;
.source "ShowSelectApnPopUpActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "dismissListener"
.end annotation


# instance fields
.field simSlot:I

.field final synthetic this$0:Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;


# direct methods
.method constructor <init>(Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;I)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity$dismissListener;->this$0:Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput p2, p0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity$dismissListener;->simSlot:I

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 230
    iget-object p1, p0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity$dismissListener;->this$0:Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;

    iget p0, p0, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity$dismissListener;->simSlot:I

    invoke-virtual {p1, p0}, Lcom/android/providers/telephony/ShowSelectApnPopUpActivity;->onDismissPro(I)V

    return-void
.end method
