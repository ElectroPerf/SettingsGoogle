.class public final synthetic Lcom/android/settings/network/telephony/NetworkProviderBackupCallingGroup$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/network/telephony/NetworkProviderBackupCallingGroup;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/telephony/NetworkProviderBackupCallingGroup;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/NetworkProviderBackupCallingGroup$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/telephony/NetworkProviderBackupCallingGroup;

    iput-object p2, p0, Lcom/android/settings/network/telephony/NetworkProviderBackupCallingGroup$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/network/telephony/NetworkProviderBackupCallingGroup$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/network/telephony/NetworkProviderBackupCallingGroup;

    iget-object p0, p0, Lcom/android/settings/network/telephony/NetworkProviderBackupCallingGroup$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-static {v0, p0, p1}, Lcom/android/settings/network/telephony/NetworkProviderBackupCallingGroup;->$r8$lambda$dQw_iLC7wi4WKQal6anNAKuKG0w(Lcom/android/settings/network/telephony/NetworkProviderBackupCallingGroup;Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Z

    move-result p0

    return p0
.end method
