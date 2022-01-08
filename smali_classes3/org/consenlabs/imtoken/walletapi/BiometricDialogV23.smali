.class public Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23;
.super Landroid/app/DialogFragment;
.source "BiometricDialogV23.java"


# instance fields
.field private biometricCallback:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

.field private mImgFingerprint:Landroid/widget/ImageView;

.field private mTvFailed:Landroid/widget/TextView;

.field private mTvSubtitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23;->cancelAuth()V

    return-void
.end method

.method private cancelAuth()V
    .locals 3

    .line 98
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23;->dismiss()V

    .line 99
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23;->biometricCallback:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

    const/4 v1, 0x1

    const-string v2, "biometrics_cancel"

    invoke-virtual {v0, v1, v2}, Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 61
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 62
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23;->cancelAuth()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 37
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0035

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f09009d

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09033f

    .line 40
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23;->mTvFailed:Landroid/widget/TextView;

    const v1, 0x7f0901ba

    .line 41
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23;->mImgFingerprint:Landroid/widget/ImageView;

    const v1, 0x7f090342

    .line 42
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23;->mTvSubtitle:Landroid/widget/TextView;

    .line 44
    new-instance v1, Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23$1;

    invoke-direct {v1, p0}, Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23$1;-><init>(Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f0800d1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    return-object p1
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onHiddenChanged(Z)V

    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackOnHiddenChanged(Ljava/lang/Object;Z)V

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 77
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 78
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 81
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 82
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x3fe8000000000000L    # 0.75

    mul-double v1, v1, v3

    double-to-int v1, v1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 85
    :cond_0
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackFragmentResume(Ljava/lang/Object;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-static {p0, p1, p2}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->onFragmentViewCreated(Ljava/lang/Object;Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public recognitionFailedFeedback()V
    .locals 3

    .line 88
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23;->mImgFingerprint:Landroid/widget/ImageView;

    const/4 v1, 0x5

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, "translationX"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const/4 v1, 0x2

    .line 89
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const-wide/16 v1, 0xc8

    .line 90
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 91
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 92
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23;->mTvFailed:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23;->mTvSubtitle:Landroid/widget/TextView;

    const v1, 0x7f11007c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x41a00000    # 20.0f
        0x0
        -0x3e600000    # -20.0f
        0x0
    .end array-data
.end method

.method public setBiometricCallback(Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/BiometricDialogV23;->biometricCallback:Landroidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->setUserVisibleHint(Z)V

    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/SensorsDataAutoTrackHelper;->trackFragmentSetUserVisibleHint(Ljava/lang/Object;Z)V

    return-void
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 0

    .line 68
    :try_start_0
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 69
    invoke-virtual {p1, p0, p2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 70
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
