.class public final Lcom/google/android/setupcompat/util/BuildCompatUtils;
.super Ljava/lang/Object;
.source "BuildCompatUtils.java"


# direct methods
.method public static isAtLeastS()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeastT()Z
    .locals 5

    .line 75
    invoke-static {}, Lcom/google/android/setupcompat/util/BuildCompatUtils;->isAtLeastS()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 78
    :cond_0
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v2, "REL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    goto :goto_0

    .line 79
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x54

    if-lt v2, v4, :cond_2

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x5a

    if-le v2, v4, :cond_3

    :cond_2
    const-string v2, "Tiramisu"

    .line 82
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    :goto_0
    move v1, v3

    :cond_4
    return v1
.end method
