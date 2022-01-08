.class public final Lcom/helpscout/beacon/Beacon$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/helpscout/beacon/Beacon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/helpscout/beacon/Beacon$Builder;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/helpscout/beacon/Beacon$Builder;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/helpscout/beacon/Beacon$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/helpscout/beacon/Beacon$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/helpscout/beacon/Beacon$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/helpscout/beacon/Beacon$Builder;->b:Z

    return p0
.end method


# virtual methods
.method public build()Lcom/helpscout/beacon/Beacon;
    .locals 2

    iget-object v0, p0, Lcom/helpscout/beacon/Beacon$Builder;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/helpscout/beacon/Beacon;->a()Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/helpscout/beacon/BeaconInitProvider;->Companion:Lcom/helpscout/beacon/BeaconInitProvider$Companion;

    iget-object v1, p0, Lcom/helpscout/beacon/Beacon$Builder;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/helpscout/beacon/BeaconInitProvider$Companion;->initDataStore(Landroid/content/Context;)Lcom/helpscout/beacon/BeaconDatastore;

    move-result-object v0

    invoke-static {v0}, Lcom/helpscout/beacon/Beacon;->a(Lcom/helpscout/beacon/BeaconDatastore;)V

    :cond_0
    new-instance v0, Lcom/helpscout/beacon/Beacon;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/helpscout/beacon/Beacon;-><init>(Lcom/helpscout/beacon/Beacon$Builder;Lcom/helpscout/beacon/Beacon$1;)V

    return-object v0
.end method

.method public withBeaconId(Ljava/lang/String;)Lcom/helpscout/beacon/Beacon$Builder;
    .locals 0

    iput-object p1, p0, Lcom/helpscout/beacon/Beacon$Builder;->a:Ljava/lang/String;

    return-object p0
.end method

.method public withContext(Landroid/content/Context;)Lcom/helpscout/beacon/Beacon$Builder;
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/helpscout/beacon/Beacon$Builder;->c:Landroid/content/Context;

    return-object p0
.end method

.method public withLogsEnabled(Z)Lcom/helpscout/beacon/Beacon$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/helpscout/beacon/Beacon$Builder;->b:Z

    return-object p0
.end method
