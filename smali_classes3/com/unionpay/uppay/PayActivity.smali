.class public final Lcom/unionpay/uppay/PayActivity;
.super Lcom/unionpay/mobile/android/plugin/BaseActivity;


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private d:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

.field private e:Lcom/unionpay/mobile/android/hce/f;

.field private f:Lcom/unionpay/mobile/android/utils/n;

.field private g:Lcom/unionpay/mobile/android/pro/views/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "entryexpro"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, ""

    sput-object v0, Lcom/unionpay/uppay/PayActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/unionpay/mobile/android/plugin/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/uppay/PayActivity;->d:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    iput-object v0, p0, Lcom/unionpay/uppay/PayActivity;->e:Lcom/unionpay/mobile/android/hce/f;

    iput-object v0, p0, Lcom/unionpay/uppay/PayActivity;->g:Lcom/unionpay/mobile/android/pro/views/k;

    return-void
.end method


# virtual methods
.method public final a(ILcom/unionpay/mobile/android/model/e;)Lcom/unionpay/mobile/android/nocard/views/b;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/16 v0, 0x11

    if-eq p1, v0, :cond_1

    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    const-class p1, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/unionpay/uppay/PayActivity;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    new-instance v0, Lcom/unionpay/mobile/android/pro/views/a;

    invoke-direct {v0, p0, p2, p1}, Lcom/unionpay/mobile/android/pro/views/a;-><init>(Landroid/content/Context;Lcom/unionpay/mobile/android/model/e;Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;)V

    goto :goto_0

    :cond_1
    const-class p1, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/unionpay/uppay/PayActivity;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    new-instance v0, Lcom/unionpay/mobile/android/pro/views/k;

    invoke-direct {v0, p0, p2, p1}, Lcom/unionpay/mobile/android/pro/views/k;-><init>(Landroid/content/Context;Lcom/unionpay/mobile/android/model/e;Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;)V

    iput-object v0, p0, Lcom/unionpay/uppay/PayActivity;->g:Lcom/unionpay/mobile/android/pro/views/k;

    invoke-virtual {p0}, Lcom/unionpay/uppay/PayActivity;->c()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/unionpay/mobile/android/pro/views/k;->r:Ljava/lang/String;

    iget-object p1, p0, Lcom/unionpay/uppay/PayActivity;->g:Lcom/unionpay/mobile/android/pro/views/k;

    iget-object p2, p0, Lcom/unionpay/uppay/PayActivity;->c:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1, p2}, Lcom/unionpay/mobile/android/pro/views/k;->a(Landroid/nfc/NfcAdapter;)V

    :goto_0
    move-object p1, v0

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/unionpay/mobile/android/pro/views/x;

    invoke-direct {p1, p0, p2}, Lcom/unionpay/mobile/android/pro/views/x;-><init>(Landroid/content/Context;Lcom/unionpay/mobile/android/model/e;)V

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/unionpay/mobile/android/pro/views/v;

    invoke-direct {p1, p0, p2}, Lcom/unionpay/mobile/android/pro/views/v;-><init>(Landroid/content/Context;Lcom/unionpay/mobile/android/model/e;)V

    goto :goto_1

    :cond_4
    new-instance p1, Lcom/unionpay/mobile/android/pro/views/j;

    invoke-direct {p1, p0}, Lcom/unionpay/mobile/android/pro/views/j;-><init>(Landroid/content/Context;)V

    move-object p2, p1

    check-cast p2, Lcom/unionpay/mobile/android/nocard/views/l;

    invoke-virtual {p0}, Lcom/unionpay/uppay/PayActivity;->a()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/unionpay/mobile/android/nocard/views/l;->a(Z)V

    :goto_1
    return-object p1
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-class v0, Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/unionpay/uppay/PayActivity;->d:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    if-nez p1, :cond_0

    new-instance p1, Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    invoke-virtual {p0}, Lcom/unionpay/uppay/PayActivity;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/unionpay/mobile/android/pro/pboc/engine/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/unionpay/uppay/PayActivity;->d:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    :cond_0
    iget-object p1, p0, Lcom/unionpay/uppay/PayActivity;->d:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    return-object p1

    :cond_1
    const-class v0, Lcom/unionpay/mobile/android/hce/f;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/unionpay/uppay/PayActivity;->e:Lcom/unionpay/mobile/android/hce/f;

    if-nez p1, :cond_2

    new-instance p1, Lcom/unionpay/mobile/android/hce/f;

    invoke-direct {p1, p0}, Lcom/unionpay/mobile/android/hce/f;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/unionpay/uppay/PayActivity;->e:Lcom/unionpay/mobile/android/hce/f;

    :cond_2
    iget-object p1, p0, Lcom/unionpay/uppay/PayActivity;->e:Lcom/unionpay/mobile/android/hce/f;

    return-object p1

    :cond_3
    invoke-super {p0, p1}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a()Z
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/unionpay/uppay/PayActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {p0}, Lcom/unionpay/mobile/android/utils/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.permission.NFC"

    invoke-virtual {v0, v3, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return v1

    :cond_2
    const-string v0, "nfc"

    invoke-virtual {p0, v0}, Lcom/unionpay/uppay/PayActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/NfcManager;

    invoke-virtual {v0}, Landroid/nfc/NfcManager;->getDefaultAdapter()Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public final d()Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;
    .locals 1

    new-instance v0, Lcom/unionpay/mobile/android/utils/n;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/utils/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unionpay/uppay/PayActivity;->f:Lcom/unionpay/mobile/android/utils/n;

    return-object v0
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/unionpay/uppay/PayActivity;->g:Lcom/unionpay/mobile/android/pro/views/k;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/unionpay/mobile/android/pro/views/k;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/unionpay/uppay/PayActivity;->g:Lcom/unionpay/mobile/android/pro/views/k;

    iget-object p2, p0, Lcom/unionpay/uppay/PayActivity;->c:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1, p2}, Lcom/unionpay/mobile/android/pro/views/k;->a(Landroid/nfc/NfcAdapter;)V

    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected final onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/unionpay/uppay/PayActivity;->d:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/pro/pboc/engine/b;->a()V

    iput-object v1, p0, Lcom/unionpay/uppay/PayActivity;->d:Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    :cond_0
    iget-object v0, p0, Lcom/unionpay/uppay/PayActivity;->f:Lcom/unionpay/mobile/android/utils/n;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/utils/n;->h()V

    iput-object v1, p0, Lcom/unionpay/uppay/PayActivity;->f:Lcom/unionpay/mobile/android/utils/n;

    iput-object v1, p0, Lcom/unionpay/uppay/PayActivity;->g:Lcom/unionpay/mobile/android/pro/views/k;

    const-string v0, ""

    sput-object v0, Lcom/unionpay/uppay/PayActivity;->a:Ljava/lang/String;

    return-void
.end method

.method protected final onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "android.nfc.extra.TAG"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "NFCTAG"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/unionpay/mobile/android/pboctransaction/nfc/b$b;

    check-cast v0, Landroid/nfc/Tag;

    invoke-static {v0}, Landroid/nfc/tech/IsoDep;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/IsoDep;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/unionpay/mobile/android/pboctransaction/nfc/b$b;-><init>(Landroid/nfc/tech/IsoDep;)V

    invoke-virtual {p1}, Lcom/unionpay/mobile/android/pboctransaction/nfc/b$b;->a()V

    const-class v0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unionpay/uppay/PayActivity;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unionpay/mobile/android/fully/a;

    new-instance v1, Lcom/unionpay/mobile/android/pboctransaction/nfc/a;

    invoke-direct {v1, v0, p1}, Lcom/unionpay/mobile/android/pboctransaction/nfc/a;-><init>(Lcom/unionpay/mobile/android/fully/a;Lcom/unionpay/mobile/android/pboctransaction/nfc/b$b;)V

    iget-object p1, p0, Lcom/unionpay/uppay/PayActivity;->g:Lcom/unionpay/mobile/android/pro/views/k;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/unionpay/mobile/android/pro/views/k;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/unionpay/uppay/PayActivity;->g:Lcom/unionpay/mobile/android/pro/views/k;

    invoke-virtual {p1, v1}, Lcom/unionpay/mobile/android/pro/views/k;->a(Lcom/unionpay/mobile/android/pboctransaction/nfc/a;)V

    :cond_0
    return-void
.end method

.method protected final onResume()V
    .locals 2

    invoke-super {p0}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->onResume()V

    iget-object v0, p0, Lcom/unionpay/uppay/PayActivity;->g:Lcom/unionpay/mobile/android/pro/views/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/pro/views/k;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/uppay/PayActivity;->g:Lcom/unionpay/mobile/android/pro/views/k;

    iget-object v1, p0, Lcom/unionpay/uppay/PayActivity;->c:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/pro/views/k;->a(Landroid/nfc/NfcAdapter;)V

    :cond_0
    return-void
.end method
