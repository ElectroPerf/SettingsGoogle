.class Lcom/android/settingslib/animation/AppearAnimationUtils$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppearAnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/animation/AppearAnimationUtils;->createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/animation/AppearAnimationUtils;

.field final synthetic val$endRunnable:Ljava/lang/Runnable;

.field final synthetic val$targetAlpha:F

.field final synthetic val$targetTranslationY:F

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settingslib/animation/AppearAnimationUtils;Landroid/view/View;FFLjava/lang/Runnable;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/android/settingslib/animation/AppearAnimationUtils$2;->this$0:Lcom/android/settingslib/animation/AppearAnimationUtils;

    iput-object p2, p0, Lcom/android/settingslib/animation/AppearAnimationUtils$2;->val$view:Landroid/view/View;

    iput p3, p0, Lcom/android/settingslib/animation/AppearAnimationUtils$2;->val$targetAlpha:F

    iput p4, p0, Lcom/android/settingslib/animation/AppearAnimationUtils$2;->val$targetTranslationY:F

    iput-object p5, p0, Lcom/android/settingslib/animation/AppearAnimationUtils$2;->val$endRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 214
    iget-object p1, p0, Lcom/android/settingslib/animation/AppearAnimationUtils$2;->val$view:Landroid/view/View;

    iget v0, p0, Lcom/android/settingslib/animation/AppearAnimationUtils$2;->val$targetAlpha:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 215
    iget-object p1, p0, Lcom/android/settingslib/animation/AppearAnimationUtils$2;->val$view:Landroid/view/View;

    iget p0, p0, Lcom/android/settingslib/animation/AppearAnimationUtils$2;->val$targetTranslationY:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/android/settingslib/animation/AppearAnimationUtils$2;->val$endRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 221
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
