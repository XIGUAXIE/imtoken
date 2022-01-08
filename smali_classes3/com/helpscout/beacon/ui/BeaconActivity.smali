.class public Lcom/helpscout/beacon/ui/BeaconActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# static fields
.field public static BEACON_SCREEN_ARGS_KEY:Ljava/lang/String; = "com.helpscout.beacon.uiBeaconScreenArgsKey"

.field public static BEACON_SCREEN_KEY:Ljava/lang/String; = "com.helpscout.beacon.uiBeaconScreenKey"

.field public static BEACON_SUGGEST_ARTICLES_KEY:Ljava/lang/String; = "com.helpscout.beacon.uiBEACON_SUGGEST_ARTICLES_KEY"

.field public static KEY_SIGNATURE:Ljava/lang/String; = "com.helpscout.beacon.ui.HS_BEACON_SIGNATURE"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static createOpenBeaconIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/helpscout/beacon/ui/BeaconActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p0, 0x10000000

    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method static createOpenInSecureModeIntent(Landroid/content/Context;Ljava/lang/String;Lcom/helpscout/beacon/model/BeaconScreens;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/helpscout/beacon/model/BeaconScreens;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    invoke-static {p0}, Lcom/helpscout/beacon/ui/BeaconActivity;->createOpenBeaconIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    sget-object v0, Lcom/helpscout/beacon/ui/BeaconActivity;->KEY_SIGNATURE:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object p1, Lcom/helpscout/beacon/ui/BeaconActivity;->BEACON_SCREEN_KEY:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    sget-object p1, Lcom/helpscout/beacon/ui/BeaconActivity;->BEACON_SCREEN_ARGS_KEY:Ljava/lang/String;

    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    return-object p0
.end method

.method private forwardToInternalActivity()V
    .locals 4

    invoke-direct {p0}, Lcom/helpscout/beacon/ui/BeaconActivity;->getBeaconScreenSelectorFromIntent()Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;

    move-result-object v0

    invoke-direct {p0}, Lcom/helpscout/beacon/ui/BeaconActivity;->hasSignatureExtra()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/helpscout/beacon/ui/BeaconActivity;->KEY_SIGNATURE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    sget-object v2, Lcom/helpscout/beacon/ui/BeaconActivity$1;->$SwitchMap$com$helpscout$beacon$model$BeaconScreens:[I

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;->getScreen()Lcom/helpscout/beacon/model/BeaconScreens;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    sget-object v2, Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateActivity;->i:Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateActivity$b;

    invoke-virtual {v2, p0, v1, v0}, Lcom/helpscout/beacon/internal/presentation/ui/navigate/CustomNavigateActivity$b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;)V

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->k:Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$b;

    invoke-virtual {v0, p0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$b;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->k:Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$b;

    invoke-virtual {v0}, Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;->getArgs()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, p0, v1, v0}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity;->k:Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$b;

    invoke-virtual {v0, p0, v1}, Lcom/helpscout/beacon/internal/presentation/ui/home/HomeActivity$b;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private getBeaconScreenSelectorFromIntent()Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;
    .locals 3

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/helpscout/beacon/ui/BeaconActivity;->BEACON_SCREEN_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/helpscout/beacon/model/BeaconScreens;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/helpscout/beacon/ui/BeaconActivity;->BEACON_SCREEN_ARGS_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/helpscout/beacon/model/BeaconScreens;->DEFAULT:Lcom/helpscout/beacon/model/BeaconScreens;

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-direct {v2, v0, v1}, Lcom/helpscout/beacon/internal/core/model/BeaconScreenSelector;-><init>(Lcom/helpscout/beacon/model/BeaconScreens;Ljava/util/List;)V

    return-object v2
.end method

.method private hasSignatureExtra()Z
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/helpscout/beacon/ui/BeaconActivity;->KEY_SIGNATURE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static open(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/helpscout/beacon/ui/BeaconActivity;->createOpenBeaconIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static open(Landroid/content/Context;Lcom/helpscout/beacon/model/BeaconScreens;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/helpscout/beacon/model/BeaconScreens;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/helpscout/beacon/ui/BeaconActivity;->createOpenBeaconIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/helpscout/beacon/ui/BeaconActivity;->BEACON_SCREEN_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    sget-object p1, Lcom/helpscout/beacon/ui/BeaconActivity;->BEACON_SCREEN_ARGS_KEY:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static openInSecureMode(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/helpscout/beacon/ui/BeaconActivity;->createOpenBeaconIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/helpscout/beacon/ui/BeaconActivity;->KEY_SIGNATURE:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static openInSecureMode(Landroid/content/Context;Ljava/lang/String;Lcom/helpscout/beacon/model/BeaconScreens;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/helpscout/beacon/model/BeaconScreens;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/helpscout/beacon/ui/BeaconActivity;->createOpenInSecureModeIntent(Landroid/content/Context;Ljava/lang/String;Lcom/helpscout/beacon/model/BeaconScreens;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private verifyBeaconEnabledOrThrow()V
    .locals 2

    invoke-static {}, Lcom/helpscout/beacon/Beacon;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/SDKInitException;

    const-string v1, "Beacon must be initialised, use Beacon.Builder()"

    invoke-direct {v0, v1}, Lcom/helpscout/beacon/SDKInitException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifySignatureOrThrow()V
    .locals 2

    invoke-direct {p0}, Lcom/helpscout/beacon/ui/BeaconActivity;->hasSignatureExtra()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/helpscout/beacon/ui/BeaconActivity;->KEY_SIGNATURE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/SDKInitException;

    const-string v1, "You are trying to open a Beacon is Secure Mode without providing a signature"

    invoke-direct {v0, v1}, Lcom/helpscout/beacon/SDKInitException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/helpscout/beacon/ui/BeaconActivity;->verifyBeaconEnabledOrThrow()V

    invoke-direct {p0}, Lcom/helpscout/beacon/ui/BeaconActivity;->verifySignatureOrThrow()V

    invoke-direct {p0}, Lcom/helpscout/beacon/ui/BeaconActivity;->forwardToInternalActivity()V

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method
