.class public final synthetic Lcom/google/android/settings/security/SecurityContentManager$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/settings/security/SecurityContentManager$$ExternalSyntheticLambda3;->f$0:Ljava/util/Set;

    iput-object p2, p0, Lcom/google/android/settings/security/SecurityContentManager$$ExternalSyntheticLambda3;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/settings/security/SecurityContentManager$$ExternalSyntheticLambda3;->f$0:Ljava/util/Set;

    iget-object p0, p0, Lcom/google/android/settings/security/SecurityContentManager$$ExternalSyntheticLambda3;->f$1:Ljava/util/List;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {v0, p0, p1}, Lcom/google/android/settings/security/SecurityContentManager;->$r8$lambda$pmr7jTiOYofbDY8iZRSHr_ZBl3c(Ljava/util/Set;Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method
