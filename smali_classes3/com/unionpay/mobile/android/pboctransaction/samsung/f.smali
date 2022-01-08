.class public final Lcom/unionpay/mobile/android/pboctransaction/samsung/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unionpay/mobile/android/pboctransaction/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unionpay/mobile/android/pboctransaction/samsung/f$a;
    }
.end annotation


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Lcom/unionpay/tsmservice/request/GetVendorPayStatusRequestParams;

.field private D:J

.field private E:Z

.field private final F:Landroid/os/Handler$Callback;

.field private final G:Landroid/os/Handler;

.field private H:Lcom/unionpay/tsmservice/request/InitRequestParams;

.field private I:Lcom/unionpay/tsmservice/request/SendApduRequestParams;

.field private final J:Lcom/unionpay/tsmservice/UPTsmAddon$UPTsmConnectionListener;

.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Z

.field g:Z

.field h:Z

.field private final i:Ljava/lang/String;

.field private final j:I

.field private k:Landroid/content/Context;

.field private l:Lcom/unionpay/mobile/android/pboctransaction/b;

.field private m:Lcom/unionpay/mobile/android/pboctransaction/samsung/f$a;

.field private n:Lcom/unionpay/tsmservice/UPTsmAddon;

.field private o:Landroid/os/Handler;

.field private p:I

.field private final q:I

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Z

.field private v:Ljava/lang/String;

.field private w:Z

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/unionpay/mobile/android/pboctransaction/samsung/f$a;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "19999741583305435775450371903957622252895007857586703985696530069777024392884287211670048223494223356836139331264745305488035196420545843046674853984852305228918004888414759300445308845681087472809487791392726663269247999482633231304479943902981311338709709401000108625221857486530967716878328228310703650408575058288784573884262229674701501842066793928002725038356122707147929560460157457327696696471785787505023643000687928051333648369477362945785046976181683285277919023274376124429148429078602516462345014971452220809120399264066736558357572250447243744965533695780751271768398207631002867947152625578881506566297"

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->a:Ljava/lang/String;

    const-string v0, "65537"

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->b:Ljava/lang/String;

    const-string v0, "5929703506495688276130676968213384164609348882017291684789802337394713840702726472221198819456433069055388915357817202968369194525956730949539025096963015440180443916974948318765778051794088998339276397676916425744003507605582286608745438301704836361482343765671805403004194772735755889141443700570750608527755694790475628670051863813384800013641474007746161600969180035295709344887092512089121125289090881005234379649440422346798246278284328310221953743757037875834557694749810951089453346522229122216198442376081589767583019062954875861469699069474707285206935898628020341168773624455554331118138151051364372906861"

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->c:Ljava/lang/String;

    const-string v0, "UnionPay"

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->d:Ljava/lang/String;

    const-string v0, "A0000003334355502D4D4F42494C45"

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->i:Ljava/lang/String;

    const/16 v0, 0x2710

    iput v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->j:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->o:Landroid/os/Handler;

    const/4 v1, 0x0

    iput v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->p:I

    const/16 v2, 0x8

    iput v2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->q:I

    iput-boolean v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->r:Z

    const-string v2, "-1"

    iput-object v2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->s:Ljava/lang/String;

    const-string v3, ""

    iput-object v3, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->t:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->u:Z

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->v:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->w:Z

    iput-object v3, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->x:Ljava/lang/String;

    iput-object v2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->y:Ljava/lang/String;

    iput-object v2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->z:Ljava/lang/String;

    iput-object v3, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->A:Ljava/lang/String;

    iput-object v3, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->B:Ljava/lang/String;

    iput-object v3, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->e:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->f:Z

    iput-boolean v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->g:Z

    iput-boolean v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->h:Z

    const-wide/16 v2, 0x1f40

    iput-wide v2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->D:J

    iput-boolean v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->E:Z

    new-instance v0, Lcom/unionpay/mobile/android/pboctransaction/samsung/g;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/g;-><init>(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->F:Landroid/os/Handler$Callback;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->F:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->G:Landroid/os/Handler;

    new-instance v0, Lcom/unionpay/mobile/android/pboctransaction/samsung/h;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/h;-><init>(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->J:Lcom/unionpay/tsmservice/UPTsmAddon$UPTsmConnectionListener;

    iput-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->m:Lcom/unionpay/mobile/android/pboctransaction/samsung/f$a;

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->G:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->s:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;ILjava/lang/String;)V
    .locals 5

    const/16 v0, 0x3e8

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3fa

    const-string v2, "uppay-spay"

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    const/4 v3, 0x1

    const-string v4, "uppay"

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "get spay list call back"

    invoke-static {v2, p1}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->o:Landroid/os/Handler;

    const/16 v0, 0x7d1

    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->o:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->G:Landroid/os/Handler;

    const/16 p2, 0x8

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->o:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :pswitch_2
    const-string p1, "close channel fail"

    invoke-static {v4, p1}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->w:Z

    return-void

    :pswitch_3
    const-string p1, "apdu fail"

    invoke-static {v4, p1}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->G:Landroid/os/Handler;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v3, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->u:Z

    return-void

    :pswitch_4
    const-string p1, "open channel fail"

    invoke-static {v4, p1}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->s:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->t:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->r:Z

    return-void

    :cond_0
    :pswitch_5
    const-string p1, "check spay support fail"

    invoke-static {v2, p1}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->m:Lcom/unionpay/mobile/android/pboctransaction/samsung/f$a;

    invoke-interface {p0, v1}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f$a;->a(Z)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v1}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->a(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3f3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/unionpay/tsmservice/request/SendApduRequestParams;

    invoke-direct {v0}, Lcom/unionpay/tsmservice/request/SendApduRequestParams;-><init>()V

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->I:Lcom/unionpay/tsmservice/request/SendApduRequestParams;

    invoke-virtual {v0, p2}, Lcom/unionpay/tsmservice/request/SendApduRequestParams;->setChannel(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->I:Lcom/unionpay/tsmservice/request/SendApduRequestParams;

    invoke-virtual {p2, p1}, Lcom/unionpay/tsmservice/request/SendApduRequestParams;->setHexApdu(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->f:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->I:Lcom/unionpay/tsmservice/request/SendApduRequestParams;

    invoke-direct {p0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->g()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/unionpay/tsmservice/request/SendApduRequestParams;->setReserve(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->l:Lcom/unionpay/mobile/android/pboctransaction/b;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {v0}, Lcom/unionpay/mobile/android/pboctransaction/b;->a()V

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/unionpay/mobile/android/pboctransaction/b;->b()V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->o:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->t:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->E:Z

    return p1
.end method

.method static synthetic c(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->v:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->u:Z

    return v0
.end method

.method static synthetic d(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;)Lcom/unionpay/mobile/android/pboctransaction/samsung/f$a;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->m:Lcom/unionpay/mobile/android/pboctransaction/samsung/f$a;

    return-object p0
.end method

.method static synthetic d(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->x:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->E:Z

    return p0
.end method

.method private f()V
    .locals 7

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->H:Lcom/unionpay/tsmservice/request/InitRequestParams;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unionpay/tsmservice/request/InitRequestParams;

    invoke-direct {v0}, Lcom/unionpay/tsmservice/request/InitRequestParams;-><init>()V

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->H:Lcom/unionpay/tsmservice/request/InitRequestParams;

    iget-boolean v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->f:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unionpay/tsmservice/request/InitRequestParams;->setSignature(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->H:Lcom/unionpay/tsmservice/request/InitRequestParams;

    invoke-direct {p0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unionpay/tsmservice/request/InitRequestParams;->setReserve(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->n:Lcom/unionpay/tsmservice/UPTsmAddon;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->H:Lcom/unionpay/tsmservice/request/InitRequestParams;

    new-instance v3, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;

    iget-object v4, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->G:Landroid/os/Handler;

    const/16 v5, 0x3e8

    invoke-direct {v3, v5, v4}, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;-><init>(ILandroid/os/Handler;)V

    invoke-virtual {v1, v2, v3}, Lcom/unionpay/tsmservice/UPTsmAddon;->init(Lcom/unionpay/tsmservice/request/InitRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ""

    if-eqz v1, :cond_1

    :try_start_1
    iget-object v3, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->G:Landroid/os/Handler;

    iget-object v4, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->G:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-static {v4, v6, v5, v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->G:Landroid/os/Handler;

    iget-object v4, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->G:Landroid/os/Handler;

    const/4 v6, 0x4

    invoke-static {v4, v6, v5, v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-wide v4, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->D:J

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    const-string v2, "uppay"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ret = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v1

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->a(Z)V

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return-void
.end method

.method static synthetic f(Lcom/unionpay/mobile/android/pboctransaction/samsung/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->f()V

    return-void
.end method

.method private g()Ljava/lang/String;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "signature"

    iget-object v2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iput-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->t:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->r:Z

    :try_start_0
    new-instance v2, Lcom/unionpay/tsmservice/request/OpenChannelRequestParams;

    invoke-direct {v2}, Lcom/unionpay/tsmservice/request/OpenChannelRequestParams;-><init>()V

    invoke-virtual {v2, p1}, Lcom/unionpay/tsmservice/request/OpenChannelRequestParams;->setAppAID(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->f:Z

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/unionpay/tsmservice/request/OpenChannelRequestParams;->setReserve(Ljava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->n:Lcom/unionpay/tsmservice/UPTsmAddon;

    new-instance v4, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;

    iget-object v5, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->G:Landroid/os/Handler;

    const/16 v6, 0x3f3

    invoke-direct {v4, v6, v5}, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;-><init>(ILandroid/os/Handler;)V

    invoke-virtual {v3, v2, v4}, Lcom/unionpay/tsmservice/UPTsmAddon;->openChannel(Lcom/unionpay/tsmservice/request/OpenChannelRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->G:Landroid/os/Handler;

    iget-object v3, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->G:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-static {v3, v4, v6, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->t:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->r:Z

    if-eqz v1, :cond_2

    :cond_3
    const-string v1, "A0000003334355502D4D4F42494C45"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->s:Ljava/lang/String;

    iput-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->y:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->s:Ljava/lang/String;

    iput-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->z:Ljava/lang/String;

    :goto_1
    iput-boolean v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->r:Z

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->t:Ljava/lang/String;

    return-object p1
.end method

.method public final a(Lcom/unionpay/mobile/android/pboctransaction/d;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unionpay/mobile/android/pboctransaction/d;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/unionpay/mobile/android/model/c;",
            ">;"
        }
    .end annotation

    const-string p1, "uppay"

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->n:Lcom/unionpay/tsmservice/UPTsmAddon;

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lcom/unionpay/mobile/android/model/b;->aB:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    const/4 v3, 0x4

    const-string v4, ""

    if-eqz v1, :cond_3

    :try_start_1
    sget-boolean v1, Lcom/unionpay/mobile/android/model/b;->aA:Z

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/unionpay/mobile/android/model/b;->bo:Z

    if-eqz v1, :cond_3

    new-instance v1, Lcom/unionpay/tsmservice/request/GetCardInfoBySpayRequestParams;

    invoke-direct {v1}, Lcom/unionpay/tsmservice/request/GetCardInfoBySpayRequestParams;-><init>()V

    new-instance v5, Lcom/unionpay/tsmservice/data/Amount;

    invoke-direct {v5}, Lcom/unionpay/tsmservice/data/Amount;-><init>()V

    iget-object v6, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->A:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/unionpay/tsmservice/data/Amount;->setProductPrice(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->B:Ljava/lang/String;

    invoke-static {v6}, Lcom/unionpay/mobile/android/pboctransaction/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v5, v6}, Lcom/unionpay/tsmservice/data/Amount;->setCurrencyType(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1, v5}, Lcom/unionpay/tsmservice/request/GetCardInfoBySpayRequestParams;->setAmount(Lcom/unionpay/tsmservice/data/Amount;)V

    iget-boolean v5, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->f:Z

    if-eqz v5, :cond_1

    invoke-direct {p0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/unionpay/tsmservice/request/GetCardInfoBySpayRequestParams;->setReserve(Ljava/lang/String;)V

    :cond_1
    iget-object v5, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->n:Lcom/unionpay/tsmservice/UPTsmAddon;

    new-instance v6, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;

    iget-object v7, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->G:Landroid/os/Handler;

    const/16 v8, 0x3f7

    invoke-direct {v6, v8, v7}, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;-><init>(ILandroid/os/Handler;)V

    invoke-virtual {v5, v1, v6}, Lcom/unionpay/tsmservice/UPTsmAddon;->getCardInfoBySamsungPay(Lcom/unionpay/tsmservice/request/GetCardInfoBySpayRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->G:Landroid/os/Handler;

    iget-object v5, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->G:Landroid/os/Handler;

    invoke-static {v5, v2, v8, v0, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->G:Landroid/os/Handler;

    iget-object v5, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->G:Landroid/os/Handler;

    invoke-static {v5, v3, v8, v0, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1f40

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "readList: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/unionpay/tsmservice/request/GetSeAppListRequestParams;

    invoke-direct {v1}, Lcom/unionpay/tsmservice/request/GetSeAppListRequestParams;-><init>()V

    iget-boolean v5, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->f:Z

    if-eqz v5, :cond_4

    invoke-direct {p0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/unionpay/tsmservice/request/GetSeAppListRequestParams;->setReserve(Ljava/lang/String;)V

    :cond_4
    iget-object v5, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->n:Lcom/unionpay/tsmservice/UPTsmAddon;

    new-instance v6, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;

    iget-object v7, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->G:Landroid/os/Handler;

    const/16 v8, 0x3f6

    invoke-direct {v6, v8, v7}, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;-><init>(ILandroid/os/Handler;)V

    invoke-virtual {v5, v1, v6}, Lcom/unionpay/tsmservice/UPTsmAddon;->getSEAppList(Lcom/unionpay/tsmservice/request/GetSeAppListRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->G:Landroid/os/Handler;

    iget-object v3, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->G:Landroid/os/Handler;

    invoke-static {v3, v2, v8, v0, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->G:Landroid/os/Handler;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->G:Landroid/os/Handler;

    invoke-static {v2, v3, v8, v0, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-wide v3, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->D:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->a(Z)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->a(Z)V

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    const-string v0, "readList"

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->n:Lcom/unionpay/tsmservice/UPTsmAddon;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->J:Lcom/unionpay/tsmservice/UPTsmAddon$UPTsmConnectionListener;

    invoke-virtual {v0, v1}, Lcom/unionpay/tsmservice/UPTsmAddon;->removeConnectionListener(Lcom/unionpay/tsmservice/UPTsmAddon$UPTsmConnectionListener;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->n:Lcom/unionpay/tsmservice/UPTsmAddon;

    invoke-virtual {v0}, Lcom/unionpay/tsmservice/UPTsmAddon;->unbind()V

    :cond_0
    return-void
.end method

.method public final a(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->o:Landroid/os/Handler;

    return-void
.end method

.method public final a(Lcom/unionpay/mobile/android/pboctransaction/b;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->l:Lcom/unionpay/mobile/android/pboctransaction/b;

    iput-object p2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->k:Landroid/content/Context;

    :try_start_0
    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->c:Ljava/lang/String;

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-direct {v0, v1, p1}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const-string p1, "RSA"

    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object p1

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->d:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/a;->a(Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/security/spec/InvalidKeySpecException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :goto_0
    sget-boolean p1, Lcom/unionpay/mobile/android/model/b;->bm:Z

    if-eqz p1, :cond_0

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->D:J

    :cond_0
    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->k:Landroid/content/Context;

    invoke-static {p1}, Lcom/unionpay/mobile/android/utils/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.unionpay.uppay"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->f:Z

    invoke-static {p2}, Lcom/unionpay/tsmservice/UPTsmAddon;->getInstance(Landroid/content/Context;)Lcom/unionpay/tsmservice/UPTsmAddon;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->n:Lcom/unionpay/tsmservice/UPTsmAddon;

    iget-boolean p2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->g:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->J:Lcom/unionpay/tsmservice/UPTsmAddon$UPTsmConnectionListener;

    invoke-virtual {p1, p2}, Lcom/unionpay/tsmservice/UPTsmAddon;->addConnectionListener(Lcom/unionpay/tsmservice/UPTsmAddon$UPTsmConnectionListener;)V

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->g:Z

    :cond_1
    const-string p1, "uppay-spay"

    const-string p2, "type se  bind service"

    invoke-static {p1, p2}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->n:Lcom/unionpay/tsmservice/UPTsmAddon;

    const-string p2, "uppay"

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/unionpay/tsmservice/UPTsmAddon;->isConnected()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "bind service"

    invoke-static {p2, p1}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->n:Lcom/unionpay/tsmservice/UPTsmAddon;

    invoke-virtual {p1}, Lcom/unionpay/tsmservice/UPTsmAddon;->bind()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->a(Z)V

    :cond_2
    return-void

    :cond_3
    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->n:Lcom/unionpay/tsmservice/UPTsmAddon;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/unionpay/tsmservice/UPTsmAddon;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "tem service already connected"

    invoke-static {p2, p1}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->h:Z

    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->f()V

    return-void

    :cond_4
    invoke-direct {p0, v0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->a(Z)V

    :cond_5
    return-void
.end method

.method public final a([BI)[B
    .locals 7

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->v:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->u:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "--->"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/e;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "uppay"

    invoke-static {v3, v2}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/e;->a([B)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->z:Ljava/lang/String;

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    if-ne p2, v2, :cond_1

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/e;->a([B)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->y:Ljava/lang/String;

    goto :goto_0

    :cond_1
    :goto_1
    :try_start_0
    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->n:Lcom/unionpay/tsmservice/UPTsmAddon;

    iget-object p2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->I:Lcom/unionpay/tsmservice/request/SendApduRequestParams;

    new-instance v4, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;

    iget-object v5, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->G:Landroid/os/Handler;

    const/16 v6, 0x3f4

    invoke-direct {v4, v6, v5}, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;-><init>(ILandroid/os/Handler;)V

    invoke-virtual {p1, p2, v4}, Lcom/unionpay/tsmservice/UPTsmAddon;->sendApdu(Lcom/unionpay/tsmservice/request/SendApduRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->G:Landroid/os/Handler;

    iget-object p2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->G:Landroid/os/Handler;

    const-string v4, ""

    invoke-static {p2, v2, v6, v1, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->G:Landroid/os/Handler;

    const/4 p2, 0x3

    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p2

    const-wide/16 v4, 0x2710

    invoke-virtual {p1, p2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->v:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->u:Z

    if-eqz p1, :cond_3

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "mApduResult: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->v:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",mApduReturn:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->u:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->v:Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object v0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "ret1 <---"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "<---"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->v:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->u:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "ret2 <---"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/unionpay/mobile/android/utils/k;->a(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->A:Ljava/lang/String;

    return-void
.end method

.method public final c()V
    .locals 9

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->y:Ljava/lang/String;

    const/4 v1, 0x1

    const/16 v2, 0x3f5

    const-string v3, ""

    const-string v4, "-1"

    const/4 v5, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iput-object v3, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->x:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->w:Z

    :try_start_0
    new-instance v0, Lcom/unionpay/tsmservice/request/CloseChannelRequestParams;

    invoke-direct {v0}, Lcom/unionpay/tsmservice/request/CloseChannelRequestParams;-><init>()V

    iget-object v6, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->y:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/unionpay/tsmservice/request/CloseChannelRequestParams;->setChannel(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->f:Z

    if-eqz v6, :cond_0

    invoke-direct {p0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/unionpay/tsmservice/request/CloseChannelRequestParams;->setReserve(Ljava/lang/String;)V

    :cond_0
    iget-object v6, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->n:Lcom/unionpay/tsmservice/UPTsmAddon;

    new-instance v7, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;

    iget-object v8, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->G:Landroid/os/Handler;

    invoke-direct {v7, v2, v8}, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;-><init>(ILandroid/os/Handler;)V

    invoke-virtual {v6, v0, v7}, Lcom/unionpay/tsmservice/UPTsmAddon;->closeChannel(Lcom/unionpay/tsmservice/request/CloseChannelRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->G:Landroid/os/Handler;

    iget-object v6, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->G:Landroid/os/Handler;

    invoke-static {v6, v1, v2, v5, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->w:Z

    if-eqz v0, :cond_1

    :cond_2
    iput-object v4, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->y:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->w:Z

    :cond_3
    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->z:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iput-object v3, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->x:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->w:Z

    :try_start_1
    new-instance v0, Lcom/unionpay/tsmservice/request/CloseChannelRequestParams;

    invoke-direct {v0}, Lcom/unionpay/tsmservice/request/CloseChannelRequestParams;-><init>()V

    iget-object v6, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->z:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/unionpay/tsmservice/request/CloseChannelRequestParams;->setChannel(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->f:Z

    if-eqz v6, :cond_4

    invoke-direct {p0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->g()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/unionpay/tsmservice/request/CloseChannelRequestParams;->setReserve(Ljava/lang/String;)V

    :cond_4
    iget-object v6, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->n:Lcom/unionpay/tsmservice/UPTsmAddon;

    new-instance v7, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;

    iget-object v8, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->G:Landroid/os/Handler;

    invoke-direct {v7, v2, v8}, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;-><init>(ILandroid/os/Handler;)V

    invoke-virtual {v6, v0, v7}, Lcom/unionpay/tsmservice/UPTsmAddon;->closeChannel(Lcom/unionpay/tsmservice/request/CloseChannelRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->G:Landroid/os/Handler;

    iget-object v6, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->G:Landroid/os/Handler;

    invoke-static {v6, v1, v2, v5, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->w:Z

    if-eqz v0, :cond_5

    :cond_6
    iput-object v4, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->z:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->w:Z

    :cond_7
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->B:Ljava/lang/String;

    return-void
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final e()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "uppay"

    const-string v2, "getVendorPayStatus()"

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->C:Lcom/unionpay/tsmservice/request/GetVendorPayStatusRequestParams;

    if-nez v1, :cond_0

    new-instance v1, Lcom/unionpay/tsmservice/request/GetVendorPayStatusRequestParams;

    invoke-direct {v1}, Lcom/unionpay/tsmservice/request/GetVendorPayStatusRequestParams;-><init>()V

    iput-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->C:Lcom/unionpay/tsmservice/request/GetVendorPayStatusRequestParams;

    iget-boolean v2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->f:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/unionpay/tsmservice/request/GetVendorPayStatusRequestParams;->setReserve(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->n:Lcom/unionpay/tsmservice/UPTsmAddon;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->C:Lcom/unionpay/tsmservice/request/GetVendorPayStatusRequestParams;

    new-instance v3, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;

    iget-object v4, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->G:Landroid/os/Handler;

    const/16 v5, 0x3fa

    invoke-direct {v3, v5, v4}, Lcom/unionpay/mobile/android/pboctransaction/samsung/e;-><init>(ILandroid/os/Handler;)V

    invoke-virtual {v1, v2, v3}, Lcom/unionpay/tsmservice/UPTsmAddon;->getVendorPayStatus(Lcom/unionpay/tsmservice/request/GetVendorPayStatusRequestParams;Lcom/unionpay/tsmservice/ITsmCallback;)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->G:Landroid/os/Handler;

    iget-object v3, p0, Lcom/unionpay/mobile/android/pboctransaction/samsung/f;->G:Landroid/os/Handler;

    const-string v4, ""

    invoke-static {v3, v2, v5, v0, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_1
    return v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method
