.class public abstract Lcom/unionpay/mobile/android/plugin/BaseActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/unionpay/mobile/android/plugin/a;
.implements Lcom/unionpay/mobile/android/plugin/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionpay/mobile/android/plugin/BaseActivity$a;
    }
.end annotation


# static fields
.field public static FILTERS:[Landroid/content/IntentFilter;

.field public static TECHLISTS:[[Ljava/lang/String;

.field private static f:I


# instance fields
.field private a:Lcom/unionpay/mobile/android/nocard/views/l;

.field protected b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/unionpay/mobile/android/nocard/views/b;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Landroid/nfc/NfcAdapter;

.field private d:Lcom/unionpay/mobile/android/plugin/BaseActivity$a;

.field private e:Lcom/unionpay/mobile/android/widgets/m;

.field private g:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-class v3, Landroid/nfc/tech/IsoDep;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    aput-object v2, v0, v4

    new-array v2, v1, [Ljava/lang/String;

    const-class v3, Landroid/nfc/tech/NfcV;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    const/4 v2, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const-class v5, Landroid/nfc/tech/NfcF;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    aput-object v3, v0, v2

    sput-object v0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->TECHLISTS:[[Ljava/lang/String;

    new-array v0, v1, [Landroid/content/IntentFilter;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.TECH_DISCOVERED"

    const-string v3, "*/*"

    invoke-direct {v1, v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v4

    sput-object v0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->FILTERS:[Landroid/content/IntentFilter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->b:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->a:Lcom/unionpay/mobile/android/nocard/views/l;

    iput-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->d:Lcom/unionpay/mobile/android/plugin/BaseActivity$a;

    iput-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->e:Lcom/unionpay/mobile/android/widgets/m;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->d:Lcom/unionpay/mobile/android/plugin/BaseActivity$a;

    iget-object p1, p1, Lcom/unionpay/mobile/android/plugin/BaseActivity$a;->a:Lcom/unionpay/mobile/android/model/b;

    goto :goto_0

    :cond_0
    const-class v0, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->d:Lcom/unionpay/mobile/android/plugin/BaseActivity$a;

    iget-object p1, p1, Lcom/unionpay/mobile/android/plugin/BaseActivity$a;->b:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    goto :goto_0

    :cond_1
    const-class v0, Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->e:Lcom/unionpay/mobile/android/widgets/m;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final a(I)V
    .locals 3

    iget-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unionpay/mobile/android/nocard/views/b;

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/nocard/views/b;->g()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, v1}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->setContentView(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lcom/unionpay/mobile/android/nocard/views/b;)V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->b:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->setContentView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->b:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->setContentView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->d:Lcom/unionpay/mobile/android/plugin/BaseActivity$a;

    iget-object v0, v0, Lcom/unionpay/mobile/android/plugin/BaseActivity$a;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 3

    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    invoke-virtual {v1}, Landroid/content/res/Configuration;->setToDefaults()V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->a:Lcom/unionpay/mobile/android/nocard/views/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/nocard/views/l;->u()V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "uppay"

    const-string v1, "PayActivityEx.onCreate() +++"

    invoke-static {v0, v1}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/unionpay/mobile/android/languages/c;->a()V

    invoke-static {p0}, Lcom/unionpay/mobile/android/global/a;->a(Landroid/content/Context;)V

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/unionpay/mobile/android/plugin/BaseActivity$a;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->d()Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/unionpay/mobile/android/plugin/BaseActivity$a;-><init>(Lcom/unionpay/mobile/android/plugin/BaseActivity;Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->d:Lcom/unionpay/mobile/android/plugin/BaseActivity$a;

    new-instance v1, Lcom/unionpay/mobile/android/widgets/m;

    invoke-direct {v1, p0}, Lcom/unionpay/mobile/android/widgets/m;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->e:Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {p0, v2}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->requestWindowFeature(I)Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v2, p1}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->a(ILcom/unionpay/mobile/android/model/e;)Lcom/unionpay/mobile/android/nocard/views/b;

    move-result-object p1

    check-cast p1, Lcom/unionpay/mobile/android/nocard/views/l;

    iput-object p1, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->a:Lcom/unionpay/mobile/android/nocard/views/l;

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x2000

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    sget p1, Lcom/unionpay/mobile/android/plugin/BaseActivity;->f:I

    add-int/2addr p1, v2

    sput p1, Lcom/unionpay/mobile/android/plugin/BaseActivity;->f:I

    const-string p1, "PayActivityEx.onCreate() ---"

    invoke-static {v0, p1}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->c:Landroid/nfc/NfcAdapter;

    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x20000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->g:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->a:Lcom/unionpay/mobile/android/nocard/views/l;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/nocard/views/l;->x()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->a:Lcom/unionpay/mobile/android/nocard/views/l;

    const/4 v1, 0x0

    sput-boolean v1, Lcom/unionpay/mobile/android/model/b;->bl:Z

    sput-object v0, Lcom/unionpay/mobile/android/model/b;->bb:Ljava/util/List;

    sput-boolean v1, Lcom/unionpay/mobile/android/model/b;->bm:Z

    sget v1, Lcom/unionpay/mobile/android/plugin/BaseActivity;->f:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/unionpay/mobile/android/plugin/BaseActivity;->f:I

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/unionpay/mobile/android/resource/c;->a(Landroid/content/Context;)Lcom/unionpay/mobile/android/resource/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/resource/c;->a()V

    :cond_2
    iget-object v1, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->e:Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/widgets/m;->c()V

    iput-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->e:Lcom/unionpay/mobile/android/widgets/m;

    iget-object v1, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->d:Lcom/unionpay/mobile/android/plugin/BaseActivity$a;

    iput-object v0, v1, Lcom/unionpay/mobile/android/plugin/BaseActivity$a;->b:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    iget-object v1, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->d:Lcom/unionpay/mobile/android/plugin/BaseActivity$a;

    iput-object v0, v1, Lcom/unionpay/mobile/android/plugin/BaseActivity$a;->a:Lcom/unionpay/mobile/android/model/b;

    iput-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->d:Lcom/unionpay/mobile/android/plugin/BaseActivity$a;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->b:Ljava/util/ArrayList;

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/unionpay/mobile/android/nocard/views/b;

    invoke-virtual {p1}, Lcom/unionpay/mobile/android/nocard/views/b;->k()V

    :cond_0
    return p2

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->c:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/nfc/NfcAdapter;->disableForegroundDispatch(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->e:Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->e:Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/m;->b()V

    :cond_0
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/plugin/BaseActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->c:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/unionpay/mobile/android/plugin/BaseActivity;->g:Landroid/app/PendingIntent;

    sget-object v2, Lcom/unionpay/mobile/android/plugin/BaseActivity;->FILTERS:[Landroid/content/IntentFilter;

    sget-object v3, Lcom/unionpay/mobile/android/plugin/BaseActivity;->TECHLISTS:[[Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/nfc/NfcAdapter;->enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    :cond_1
    return-void
.end method
