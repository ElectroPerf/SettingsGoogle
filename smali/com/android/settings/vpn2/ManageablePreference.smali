.class public abstract Lcom/android/settings/vpn2/ManageablePreference;
.super Lcom/android/settings/widget/GearPreference;
.source "ManageablePreference.java"


# static fields
.field public static STATE_NONE:I = -0x1


# instance fields
.field mIsAlwaysOn:Z

.field mIsInsecureVpn:Z

.field mState:I

.field mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/GearPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/android/settings/vpn2/ManageablePreference;->mIsAlwaysOn:Z

    .line 42
    iput-boolean p1, p0, Lcom/android/settings/vpn2/ManageablePreference;->mIsInsecureVpn:Z

    .line 43
    sget p2, Lcom/android/settings/vpn2/ManageablePreference;->STATE_NONE:I

    iput p2, p0, Lcom/android/settings/vpn2/ManageablePreference;->mState:I

    .line 48
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 49
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setOrder(I)V

    .line 50
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/vpn2/ManageablePreference;->setUserId(I)V

    return-void
.end method


# virtual methods
.method public getState()I
    .locals 0

    .line 71
    iget p0, p0, Lcom/android/settings/vpn2/ManageablePreference;->mState:I

    return p0
.end method

.method public getUserId()I
    .locals 0

    .line 54
    iget p0, p0, Lcom/android/settings/vpn2/ManageablePreference;->mUserId:I

    return p0
.end method

.method public setAlwaysOn(Z)V
    .locals 1

    .line 83
    iget-boolean v0, p0, Lcom/android/settings/vpn2/ManageablePreference;->mIsAlwaysOn:Z

    if-eq v0, p1, :cond_0

    .line 84
    iput-boolean p1, p0, Lcom/android/settings/vpn2/ManageablePreference;->mIsAlwaysOn:Z

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ManageablePreference;->updateSummary()V

    :cond_0
    return-void
.end method

.method public setInsecureVpn(Z)V
    .locals 1

    .line 94
    iget-boolean v0, p0, Lcom/android/settings/vpn2/ManageablePreference;->mIsInsecureVpn:Z

    if-eq v0, p1, :cond_0

    .line 95
    iput-boolean p1, p0, Lcom/android/settings/vpn2/ManageablePreference;->mIsInsecureVpn:Z

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ManageablePreference;->updateSummary()V

    :cond_0
    return-void
.end method

.method public setState(I)V
    .locals 1

    .line 75
    iget v0, p0, Lcom/android/settings/vpn2/ManageablePreference;->mState:I

    if-eq v0, p1, :cond_0

    .line 76
    iput p1, p0, Lcom/android/settings/vpn2/ManageablePreference;->mState:I

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ManageablePreference;->updateSummary()V

    .line 78
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyHierarchyChanged()V

    :cond_0
    return-void
.end method

.method public setUserId(I)V
    .locals 1

    .line 58
    iput p1, p0, Lcom/android/settings/vpn2/ManageablePreference;->mUserId:I

    const-string v0, "no_config_vpn"

    .line 59
    invoke-virtual {p0, v0, p1}, Lcom/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;I)V

    return-void
.end method

.method protected updateSummary()V
    .locals 5

    .line 107
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0100e3

    .line 108
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 109
    iget v2, p0, Lcom/android/settings/vpn2/ManageablePreference;->mState:I

    sget v3, Lcom/android/settings/vpn2/ManageablePreference;->STATE_NONE:I

    if-ne v2, v3, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    aget-object v1, v1, v2

    .line 110
    :goto_0
    iget-boolean v2, p0, Lcom/android/settings/vpn2/ManageablePreference;->mIsInsecureVpn:Z

    const-string v3, " / "

    if-eqz v2, :cond_2

    const v2, 0x7f041670

    .line 111
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 113
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    :goto_1
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 116
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settingslib/Utils;->getColorErrorDefaultColor(Landroid/content/Context;)I

    move-result v2

    .line 117
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x22

    invoke-virtual {v1, v3, v2, v0, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 119
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 120
    :cond_2
    iget-boolean v2, p0, Lcom/android/settings/vpn2/ManageablePreference;->mIsAlwaysOn:Z

    if-eqz v2, :cond_4

    const v2, 0x7f04165d

    .line 121
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    .line 123
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 124
    :goto_2
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 126
    :cond_4
    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method
