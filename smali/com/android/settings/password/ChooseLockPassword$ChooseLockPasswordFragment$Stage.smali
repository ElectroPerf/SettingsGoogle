.class public final enum Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
.super Ljava/lang/Enum;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public static final enum ConfirmWrong:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public static final enum Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field public static final enum NeedToConfirm:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;


# instance fields
.field public final alphaHint:I

.field public final alphaHintForBiometrics:I

.field public final alphaHintForFace:I

.field public final alphaHintForFingerprint:I

.field public final alphaHintForProfile:I

.field public final alphaHintOverrideForProfile:Ljava/lang/String;

.field public final alphaMessageForBiometrics:I

.field public final buttonText:I

.field public final numericHint:I

.field public final numericHintForBiometrics:I

.field public final numericHintForFace:I

.field public final numericHintForFingerprint:I

.field public final numericHintForProfile:I

.field public final numericHintOverrideForProfile:Ljava/lang/String;

.field public final numericMessageForBiometrics:I


# direct methods
.method public static synthetic $r8$lambda$7cjSP4cP6ui2oTsSbnpyzQWvpY4(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->lambda$getHint$1(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_0ZWmC7DdrwCEGHpAWhQZ0S9k9A(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->lambda$getHint$0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 55

    .line 269
    new-instance v18, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-object/from16 v0, v18

    const-string v1, "Introduction"

    const/4 v2, 0x0

    const v3, 0x7f040c70

    const-string v4, "Settings.SET_WORK_PROFILE_PASSWORD_HEADER"

    const v5, 0x7f040c7d

    const v6, 0x7f040c73

    const v7, 0x7f040c72

    const v8, 0x7f040c71

    const v9, 0x7f040c78

    const-string v10, "Settings.SET_WORK_PROFILE_PIN_HEADER"

    const v11, 0x7f040c7f

    const v12, 0x7f040c7b

    const v13, 0x7f040c7a

    const v14, 0x7f040c79

    const v15, 0x7f040c59

    const v16, 0x7f040c59

    const v17, 0x7f040e57

    invoke-direct/range {v0 .. v17}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IILjava/lang/String;IIIIILjava/lang/String;IIIIIII)V

    sput-object v18, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 286
    new-instance v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-object/from16 v19, v0

    const-string v20, "NeedToConfirm"

    const/16 v21, 0x1

    const v22, 0x7f040c87

    const-string v23, "Settings.REENTER_WORK_PROFILE_PASSWORD_HEADER"

    const v24, 0x7f040ca9

    const v25, 0x7f040c87

    const v26, 0x7f040c87

    const v27, 0x7f040c87

    const v28, 0x7f040c91

    const-string v29, "Settings.REENTER_WORK_PROFILE_PIN_HEADER"

    const v30, 0x7f040caa

    const v31, 0x7f040c91

    const v32, 0x7f040c91

    const v33, 0x7f040c91

    const/16 v34, 0x0

    const/16 v35, 0x0

    const v36, 0x7f040c81

    invoke-direct/range {v19 .. v36}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IILjava/lang/String;IIIIILjava/lang/String;IIIIIII)V

    sput-object v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 303
    new-instance v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-object/from16 v37, v1

    const-string v38, "ConfirmWrong"

    const/16 v39, 0x2

    const v40, 0x7f040c82

    const-string v41, "UNDEFINED"

    const v42, 0x7f040c82

    const v43, 0x7f040c82

    const v44, 0x7f040c82

    const v45, 0x7f040c82

    const v46, 0x7f040c83

    const-string v47, "UNDEFINED"

    const v48, 0x7f040c83

    const v49, 0x7f040c83

    const v50, 0x7f040c83

    const v51, 0x7f040c83

    const/16 v52, 0x0

    const/16 v53, 0x0

    const v54, 0x7f040c81

    invoke-direct/range {v37 .. v54}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;-><init>(Ljava/lang/String;IILjava/lang/String;IIIIILjava/lang/String;IIIIIII)V

    sput-object v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const/4 v2, 0x3

    new-array v2, v2, [Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    const/4 v3, 0x0

    aput-object v18, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object v1, v2, v0

    .line 267
    sput-object v2, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->$VALUES:[Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;IIIIILjava/lang/String;IIIIIII)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "IIIII",
            "Ljava/lang/String;",
            "IIIIIII)V"
        }
    .end annotation

    move-object v0, p0

    .line 334
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    move v1, p3

    .line 336
    iput v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHint:I

    move-object v1, p4

    .line 337
    iput-object v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHintOverrideForProfile:Ljava/lang/String;

    move v1, p5

    .line 338
    iput v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHintForProfile:I

    move v1, p6

    .line 339
    iput v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHintForFingerprint:I

    move v1, p7

    .line 340
    iput v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHintForFace:I

    move v1, p8

    .line 341
    iput v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHintForBiometrics:I

    move v1, p9

    .line 343
    iput v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHint:I

    move-object v1, p10

    .line 344
    iput-object v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHintOverrideForProfile:Ljava/lang/String;

    move v1, p11

    .line 345
    iput v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHintForProfile:I

    move v1, p12

    .line 346
    iput v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHintForFingerprint:I

    move v1, p13

    .line 347
    iput v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHintForFace:I

    move/from16 v1, p14

    .line 348
    iput v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHintForBiometrics:I

    move/from16 v1, p15

    .line 350
    iput v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaMessageForBiometrics:I

    move/from16 v1, p16

    .line 351
    iput v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericMessageForBiometrics:I

    move/from16 v1, p17

    .line 353
    iput v1, v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->buttonText:I

    return-void
.end method

.method private synthetic lambda$getHint$0(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 396
    iget p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHintForProfile:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getHint$1(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 410
    iget p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHintForProfile:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    .locals 1

    .line 267
    const-class v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-object p0
.end method

.method public static values()[Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    .locals 1

    .line 267
    sget-object v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->$VALUES:[Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v0}, [Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    return-object v0
.end method


# virtual methods
.method public getHint(Landroid/content/Context;ZIZ)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p2, :cond_4

    if-ne p3, v2, :cond_0

    .line 388
    iget p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHintForFingerprint:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-ne p3, v1, :cond_1

    .line 390
    iget p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHintForFace:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-ne p3, v0, :cond_2

    .line 392
    iget p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHintForBiometrics:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz p4, :cond_3

    .line 394
    const-class p2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p2

    iget-object p3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHintOverrideForProfile:Ljava/lang/String;

    new-instance p4, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0, p1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;Landroid/content/Context;)V

    .line 395
    invoke-virtual {p2, p3, p4}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 398
    :cond_3
    iget p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHint:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    if-ne p3, v2, :cond_5

    .line 402
    iget p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHintForFingerprint:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    if-ne p3, v1, :cond_6

    .line 404
    iget p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHintForFace:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    if-ne p3, v0, :cond_7

    .line 406
    iget p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHintForBiometrics:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    if-eqz p4, :cond_8

    .line 408
    const-class p2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p2

    iget-object p3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHintOverrideForProfile:Ljava/lang/String;

    new-instance p4, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage$$ExternalSyntheticLambda1;

    invoke-direct {p4, p0, p1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;Landroid/content/Context;)V

    .line 409
    invoke-virtual {p2, p3, p4}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 412
    :cond_8
    iget p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHint:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMessage(ZI)I
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p1, :cond_1

    .line 422
    iget p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaMessageForBiometrics:I

    goto :goto_0

    :cond_1
    iget p0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericMessageForBiometrics:I

    :goto_0
    return p0
.end method
