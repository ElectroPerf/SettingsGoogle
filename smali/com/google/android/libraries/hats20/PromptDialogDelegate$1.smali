.class Lcom/google/android/libraries/hats20/PromptDialogDelegate$1;
.super Ljava/lang/Object;
.source "PromptDialogDelegate.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/hats20/PromptDialogDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$noThanksButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/hats20/PromptDialogDelegate;Landroid/widget/Button;)V
    .locals 0

    .line 152
    iput-object p2, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate$1;->val$noThanksButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 155
    iget-object p0, p0, Lcom/google/android/libraries/hats20/PromptDialogDelegate$1;->val$noThanksButton:Landroid/widget/Button;

    invoke-virtual {p0, p2}, Landroid/widget/Button;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x1

    return p0
.end method
