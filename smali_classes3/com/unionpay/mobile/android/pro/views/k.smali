.class public final Lcom/unionpay/mobile/android/pro/views/k;
.super Lcom/unionpay/mobile/android/nocard/views/b;

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/unionpay/mobile/android/upviews/a$b;


# static fields
.field private static ac:Ljava/sql/Date;

.field private static ad:Ljava/lang/String;


# instance fields
.field private A:Landroid/widget/LinearLayout;

.field private B:Landroid/widget/LinearLayout;

.field private C:Landroid/widget/RelativeLayout;

.field private D:Landroid/widget/LinearLayout;

.field private E:Landroid/widget/LinearLayout;

.field private F:Lcom/unionpay/mobile/android/widgets/ay;

.field private G:Lcom/unionpay/mobile/android/upwidget/UPRadiationView;

.field private H:Landroid/widget/ImageView;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Lcom/unionpay/mobile/android/upwidget/a;

.field private L:Lcom/unionpay/mobile/android/upwidget/a;

.field private M:Z

.field private N:Z

.field private O:Lcom/unionpay/mobile/android/upviews/a;

.field private P:Ljava/lang/String;

.field private Q:I

.field private R:Landroid/nfc/NfcAdapter;

.field private S:Landroid/widget/FrameLayout;

.field private T:Landroid/view/View$OnClickListener;

.field private U:Landroid/view/View$OnClickListener;

.field private V:Landroid/view/View$OnClickListener;

.field private W:Landroid/view/View$OnClickListener;

.field private aa:Landroid/view/View$OnClickListener;

.field private ab:Landroid/view/View$OnClickListener;

.field private ae:Ljava/lang/String;

.field private af:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public r:Ljava/lang/String;

.field s:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

.field t:Lcom/unionpay/mobile/android/pboctransaction/nfc/a;

.field private u:I

.field private v:I

.field private w:Landroid/widget/TextView;

.field private x:Z

.field private y:Lcom/unionpay/mobile/android/upviews/a;

.field private z:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    sput-object v0, Lcom/unionpay/mobile/android/pro/views/k;->ac:Ljava/sql/Date;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddhhmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/unionpay/mobile/android/pro/views/k;->ac:Ljava/sql/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/mobile/android/pro/views/k;->ad:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/unionpay/mobile/android/model/e;Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/unionpay/mobile/android/nocard/views/b;-><init>(Landroid/content/Context;Lcom/unionpay/mobile/android/model/e;)V

    const/16 p1, 0x14

    iput p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->u:I

    const/16 p1, 0x64

    iput p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->v:I

    const-string p1, "1.8"

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->r:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->w:Landroid/widget/TextView;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/unionpay/mobile/android/pro/views/k;->x:Z

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->y:Lcom/unionpay/mobile/android/upviews/a;

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->z:Landroid/os/Handler;

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->A:Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->B:Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->C:Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->D:Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->E:Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->K:Lcom/unionpay/mobile/android/upwidget/a;

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->L:Lcom/unionpay/mobile/android/upwidget/a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->M:Z

    iput-boolean p2, p0, Lcom/unionpay/mobile/android/pro/views/k;->N:Z

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->O:Lcom/unionpay/mobile/android/upviews/a;

    const/4 p2, 0x5

    iput p2, p0, Lcom/unionpay/mobile/android/pro/views/k;->Q:I

    new-instance p2, Lcom/unionpay/mobile/android/pro/views/l;

    invoke-direct {p2, p0}, Lcom/unionpay/mobile/android/pro/views/l;-><init>(Lcom/unionpay/mobile/android/pro/views/k;)V

    iput-object p2, p0, Lcom/unionpay/mobile/android/pro/views/k;->T:Landroid/view/View$OnClickListener;

    new-instance p2, Lcom/unionpay/mobile/android/pro/views/n;

    invoke-direct {p2, p0}, Lcom/unionpay/mobile/android/pro/views/n;-><init>(Lcom/unionpay/mobile/android/pro/views/k;)V

    iput-object p2, p0, Lcom/unionpay/mobile/android/pro/views/k;->U:Landroid/view/View$OnClickListener;

    new-instance p2, Lcom/unionpay/mobile/android/pro/views/o;

    invoke-direct {p2, p0}, Lcom/unionpay/mobile/android/pro/views/o;-><init>(Lcom/unionpay/mobile/android/pro/views/k;)V

    iput-object p2, p0, Lcom/unionpay/mobile/android/pro/views/k;->V:Landroid/view/View$OnClickListener;

    new-instance p2, Lcom/unionpay/mobile/android/pro/views/p;

    invoke-direct {p2, p0}, Lcom/unionpay/mobile/android/pro/views/p;-><init>(Lcom/unionpay/mobile/android/pro/views/k;)V

    iput-object p2, p0, Lcom/unionpay/mobile/android/pro/views/k;->W:Landroid/view/View$OnClickListener;

    new-instance p2, Lcom/unionpay/mobile/android/pro/views/q;

    invoke-direct {p2, p0}, Lcom/unionpay/mobile/android/pro/views/q;-><init>(Lcom/unionpay/mobile/android/pro/views/k;)V

    iput-object p2, p0, Lcom/unionpay/mobile/android/pro/views/k;->aa:Landroid/view/View$OnClickListener;

    new-instance p2, Lcom/unionpay/mobile/android/pro/views/r;

    invoke-direct {p2, p0}, Lcom/unionpay/mobile/android/pro/views/r;-><init>(Lcom/unionpay/mobile/android/pro/views/k;)V

    iput-object p2, p0, Lcom/unionpay/mobile/android/pro/views/k;->ab:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->ae:Ljava/lang/String;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    const/4 p1, 0x6

    iput p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->f:I

    const-string p1, "nfcpay"

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->q:Ljava/lang/String;

    iput-object p3, p0, Lcom/unionpay/mobile/android/pro/views/k;->s:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->z:Landroid/os/Handler;

    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean p1, p1, Lcom/unionpay/mobile/android/model/b;->K:Z

    iput-boolean p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->x:Z

    const p1, -0xaf6701

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/pro/views/k;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/k;->e()V

    return-void
.end method

.method static synthetic A(Lcom/unionpay/mobile/android/pro/views/k;)V
    .locals 0

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/k;->i()V

    return-void
.end method

.method static synthetic B(Lcom/unionpay/mobile/android/pro/views/k;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->M:Z

    return v0
.end method

.method static synthetic C(Lcom/unionpay/mobile/android/pro/views/k;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/k;->S:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic D(Lcom/unionpay/mobile/android/pro/views/k;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/k;->A:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic E(Lcom/unionpay/mobile/android/pro/views/k;)Lcom/unionpay/mobile/android/widgets/ay;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/k;->F:Lcom/unionpay/mobile/android/widgets/ay;

    return-object p0
.end method

.method static synthetic F(Lcom/unionpay/mobile/android/pro/views/k;)Landroid/nfc/NfcAdapter;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/k;->R:Landroid/nfc/NfcAdapter;

    return-object p0
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/pro/views/k;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/pro/views/k;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/pro/views/k;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x7

    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->v:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/k;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {p0, p1, p2}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/pro/views/k;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/unionpay/mobile/android/pro/views/k;->b(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/StringBuffer;)V
    .locals 5

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [B

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v2, v4

    invoke-static {v2, v1}, Lcom/unionpay/mobile/android/pboctransaction/e;->a([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method static synthetic a(Lcom/unionpay/mobile/android/pro/views/k;)Z
    .locals 0

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/k;->n()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/pro/views/k;)Lcom/unionpay/mobile/android/upviews/a;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/k;->y:Lcom/unionpay/mobile/android/upviews/a;

    return-object p0
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/pro/views/k;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/pro/views/k;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/unionpay/mobile/android/pro/views/k;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/unionpay/mobile/android/pro/views/k;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->d:Landroid/content/Context;

    check-cast v0, Lcom/unionpay/uppay/PayActivity;

    const-class v1, Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/unionpay/uppay/PayActivity;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/unionpay/mobile/android/pro/pboc/engine/b;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 p1, 0x5

    invoke-super {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/b;->b(I)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/unionpay/mobile/android/pro/views/s;

    invoke-direct {v1, p0, p1, p2}, Lcom/unionpay/mobile/android/pro/views/s;-><init>(Lcom/unionpay/mobile/android/pro/views/k;Ljava/lang/String;Ljava/util/HashMap;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic c(Lcom/unionpay/mobile/android/pro/views/k;)Lcom/unionpay/mobile/android/upwidget/a;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/k;->L:Lcom/unionpay/mobile/android/upwidget/a;

    return-object p0
.end method

.method static synthetic c(Lcom/unionpay/mobile/android/pro/views/k;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/pro/views/k;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/unionpay/mobile/android/pro/views/k;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/unionpay/mobile/android/pro/views/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/unionpay/mobile/android/pro/views/k;)Lcom/unionpay/mobile/android/upwidget/a;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/k;->K:Lcom/unionpay/mobile/android/upwidget/a;

    return-object p0
.end method

.method private static final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/unionpay/mobile/android/pboctransaction/e;->a([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic d(Lcom/unionpay/mobile/android/pro/views/k;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/unionpay/mobile/android/pro/views/k;->a(Ljava/lang/String;)V

    return-void
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/16 v0, 0x8

    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->v:I

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/unionpay/mobile/android/pro/views/k;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    const-string v0, ""

    invoke-virtual {p2, p1, v0}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\"uuid\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    const/16 v1, 0xa

    invoke-virtual {v0, p1, p2, v1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    iget p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->Q:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->Q:I

    return-void
.end method

.method static synthetic e(Lcom/unionpay/mobile/android/pro/views/k;)Lcom/unionpay/mobile/android/model/b;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/k;->a:Lcom/unionpay/mobile/android/model/b;

    return-object p0
.end method

.method static synthetic e(Lcom/unionpay/mobile/android/pro/views/k;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->P:Ljava/lang/String;

    return-object p1
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p1}, Lcom/unionpay/mobile/android/pboctransaction/e;->a(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/unionpay/mobile/android/pboctransaction/e;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lcom/unionpay/mobile/android/pro/views/k;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/k;->d:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic g(Lcom/unionpay/mobile/android/pro/views/k;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/k;->q:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/unionpay/mobile/android/pro/views/k;)Lcom/unionpay/mobile/android/widgets/m;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/k;->b:Lcom/unionpay/mobile/android/widgets/m;

    return-object p0
.end method

.method static synthetic i(Lcom/unionpay/mobile/android/pro/views/k;)I
    .locals 1

    const/16 v0, 0x65

    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->v:I

    return v0
.end method

.method static synthetic j(Lcom/unionpay/mobile/android/pro/views/k;)Ljava/util/HashMap;
    .locals 0

    invoke-direct {p0}, Lcom/unionpay/mobile/android/pro/views/k;->t()Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic k(Lcom/unionpay/mobile/android/pro/views/k;)I
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->Q:I

    return v0
.end method

.method static synthetic l(Lcom/unionpay/mobile/android/pro/views/k;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/k;->d:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic m(Lcom/unionpay/mobile/android/pro/views/k;)Lcom/unionpay/mobile/android/model/b;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/k;->a:Lcom/unionpay/mobile/android/model/b;

    return-object p0
.end method

.method static synthetic n(Lcom/unionpay/mobile/android/pro/views/k;)Lcom/unionpay/mobile/android/model/b;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/k;->a:Lcom/unionpay/mobile/android/model/b;

    return-object p0
.end method

.method static synthetic o(Lcom/unionpay/mobile/android/pro/views/k;)Lcom/unionpay/mobile/android/model/b;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/k;->a:Lcom/unionpay/mobile/android/model/b;

    return-object p0
.end method

.method static synthetic p(Lcom/unionpay/mobile/android/pro/views/k;)Lcom/unionpay/mobile/android/model/b;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/k;->a:Lcom/unionpay/mobile/android/model/b;

    return-object p0
.end method

.method static synthetic q(Lcom/unionpay/mobile/android/pro/views/k;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/pro/views/k;->d(I)V

    return-void
.end method

.method static synthetic r(Lcom/unionpay/mobile/android/pro/views/k;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/k;->d:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic s(Lcom/unionpay/mobile/android/pro/views/k;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/k;->d:Landroid/content/Context;

    return-object p0
.end method

.method private s()V
    .locals 4

    const/16 v0, 0x67

    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->v:I

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/k;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v1, v1, Lcom/unionpay/mobile/android/model/b;->aj:Ljava/lang/String;

    const-string v2, "query"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v1, v3}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a(Ljava/lang/String;Ljava/lang/String;I)V

    iget v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->u:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->u:I

    return-void
.end method

.method static synthetic t(Lcom/unionpay/mobile/android/pro/views/k;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/k;->d:Landroid/content/Context;

    return-object p0
.end method

.method private t()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/k;->y:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/upviews/a;->c()Ljava/util/HashMap;

    move-result-object v0

    :cond_0
    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/k;->O:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/upviews/a;->c()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method private static u()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action_resp_code"

    const-string v2, "0000"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic u(Lcom/unionpay/mobile/android/pro/views/k;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/k;->q:Ljava/lang/String;

    return-object p0
.end method

.method private v()I
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/k;->d:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method static synthetic v(Lcom/unionpay/mobile/android/pro/views/k;)Lcom/unionpay/mobile/android/model/b;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/k;->a:Lcom/unionpay/mobile/android/model/b;

    return-object p0
.end method

.method static synthetic w(Lcom/unionpay/mobile/android/pro/views/k;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/k;->z:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic x(Lcom/unionpay/mobile/android/pro/views/k;)V
    .locals 0

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/k;->i()V

    return-void
.end method

.method static synthetic y(Lcom/unionpay/mobile/android/pro/views/k;)Lcom/unionpay/mobile/android/model/b;
    .locals 0

    iget-object p0, p0, Lcom/unionpay/mobile/android/pro/views/k;->a:Lcom/unionpay/mobile/android/model/b;

    return-object p0
.end method

.method static synthetic z(Lcom/unionpay/mobile/android/pro/views/k;)V
    .locals 0

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/k;->i()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Ljava/util/HashMap;)Landroid/os/Bundle;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/unionpay/mobile/android/pro/views/k;->u()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    const-string v2, "PIN"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "9F26"

    invoke-direct {p0, v1, p1}, Lcom/unionpay/mobile/android/pro/views/k;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string v1, "9F27"

    invoke-direct {p0, v1, p1}, Lcom/unionpay/mobile/android/pro/views/k;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string v1, "9F10"

    invoke-direct {p0, v1, p1}, Lcom/unionpay/mobile/android/pro/views/k;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string v1, "9F37"

    invoke-direct {p0, v1, p1}, Lcom/unionpay/mobile/android/pro/views/k;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string v1, "9F36"

    invoke-direct {p0, v1, p1}, Lcom/unionpay/mobile/android/pro/views/k;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string v1, "95"

    invoke-direct {p0, v1, p1}, Lcom/unionpay/mobile/android/pro/views/k;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string v1, "9A"

    invoke-direct {p0, v1, p1}, Lcom/unionpay/mobile/android/pro/views/k;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string v1, "9C"

    invoke-direct {p0, v1, p1}, Lcom/unionpay/mobile/android/pro/views/k;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string v1, "9F02"

    invoke-direct {p0, v1, p1}, Lcom/unionpay/mobile/android/pro/views/k;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string v1, "5F2A"

    invoke-direct {p0, v1, p1}, Lcom/unionpay/mobile/android/pro/views/k;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string v1, "82"

    invoke-direct {p0, v1, p1}, Lcom/unionpay/mobile/android/pro/views/k;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string v1, "9F1A"

    invoke-direct {p0, v1, p1}, Lcom/unionpay/mobile/android/pro/views/k;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string v1, "9F03"

    invoke-direct {p0, v1, p1}, Lcom/unionpay/mobile/android/pro/views/k;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string v1, "9F33"

    invoke-direct {p0, v1, p1}, Lcom/unionpay/mobile/android/pro/views/k;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string v1, "9F34"

    invoke-direct {p0, v1, p1}, Lcom/unionpay/mobile/android/pro/views/k;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string v1, "9F35"

    invoke-direct {p0, v1, p1}, Lcom/unionpay/mobile/android/pro/views/k;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    const-string v1, "9F1E"

    invoke-direct {p0, v1, p1}, Lcom/unionpay/mobile/android/pro/views/k;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    const-string v2, "9F63"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    const-string v2, "9F63"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "9F63"

    invoke-direct {p0, v1, p1}, Lcom/unionpay/mobile/android/pro/views/k;->a(Ljava/lang/String;Ljava/lang/StringBuffer;)V

    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    const-string v2, "DCD"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->I:Ljava/lang/String;

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/k;->s:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/unionpay/mobile/android/pro/views/k;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->I:Ljava/lang/String;

    const-string p1, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "pan="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    const-string v2, "AN1"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&pin="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    const-string v2, "PIN"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&icc_data="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    const-string v2, "DCD"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&card_seq_id="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    const-string v2, "5F34"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&auth_id="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->J:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "mac"

    invoke-static {v1, p1}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/unionpay/mobile/android/pro/views/k;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "md5"

    invoke-static {v2, v1}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/k;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {v2, v1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sig"

    invoke-static {v2, v1}, Lcom/unionpay/mobile/android/utils/k;->c(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/k;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/k;->I:Ljava/lang/String;

    invoke-virtual {v2, p1, v3}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "v"

    iget-object v4, p0, Lcom/unionpay/mobile/android/pro/views/k;->r:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "cmd"

    const-string v4, "pay"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "params"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "encrypt_key_field"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "pay_type"

    const-string v4, "2"

    invoke-virtual {v3, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "pay_mode"

    const-string v4, "1"

    invoke-virtual {v3, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "bind"

    const-string v4, "no"

    invoke-virtual {v3, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "carrier_tp"

    const-string v4, "7"

    invoke-virtual {v3, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "carrier_app_tp"

    const-string v4, "0"

    invoke-virtual {v3, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "sign"

    invoke-virtual {v3, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "pan"

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    const-string v4, "AN1"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    const-string v1, "ED"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p1, "expire"

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    const-string v4, "ED"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    const-string v1, "TD2"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string p1, "track2_data"

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    const-string v4, "TD2"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-lez p1, :cond_3

    const-string p1, "pan"

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "pin"

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p2, p0, Lcom/unionpay/mobile/android/pro/views/k;->s:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {p2, p1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "action_resp_message"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_0
    :try_start_3
    const-string p1, "action_resp_code"

    const-string p2, "10019"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Landroid/nfc/NfcAdapter;)V
    .locals 2

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->R:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->B:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-boolean p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->M:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->D:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->E:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->G:Lcom/unionpay/mobile/android/upwidget/UPRadiationView;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Lcom/unionpay/mobile/android/upwidget/UPRadiationView;->setVisibility(I)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->B:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->D:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->E:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->G:Lcom/unionpay/mobile/android/upwidget/UPRadiationView;

    if-eqz p1, :cond_2

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/unionpay/mobile/android/upwidget/UPRadiationView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public final a(Lcom/unionpay/mobile/android/pboctransaction/nfc/a;)V
    .locals 12

    iput-object p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->t:Lcom/unionpay/mobile/android/pboctransaction/nfc/a;

    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->p:Ljava/util/HashMap;

    sget-object v0, Lcom/unionpay/mobile/android/pro/views/k;->ad:Ljava/lang/String;

    const/16 v1, 0x8

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v2}, Ljava/sql/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ge v5, v1, :cond_0

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v7

    const-string v2, "%08d"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    const-string v4, ""

    const-string v5, "9F26"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    const-string v5, "9F27"

    const-string v8, "80"

    invoke-virtual {v3, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    const-string v5, "9F10"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    const-string v5, "9F37"

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    const-string v3, "9F36"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    const-string v3, "95"

    const-string v5, "0000000800"

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    const-string v3, "9A"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    const-string v2, "9C"

    const-string v3, "45"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    const-string v3, "000000000000"

    const-string v5, "9F02"

    invoke-virtual {v0, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    const-string v8, "0156"

    const-string v9, "5F2A"

    invoke-virtual {v0, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    const-string v10, "82"

    invoke-virtual {v0, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    const-string v10, "9F1A"

    invoke-virtual {v0, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    const-string v11, "9F03"

    invoke-virtual {v0, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    const-string v3, "9F33"

    const-string v11, "A04000"

    invoke-virtual {v0, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    const-string v3, "9F34"

    const-string v11, "420300"

    invoke-virtual {v0, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    const-string v3, "9F35"

    const-string v11, "34"

    invoke-virtual {v0, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    const-string v3, "9F1E"

    const-string v11, "3030303030303030"

    invoke-virtual {v0, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    const-string v3, "84"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    const-string v3, "9F09"

    const-string v11, "0001"

    invoke-virtual {v0, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    const-string v3, "9F74"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    const-string v3, "9F63"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    const-string v3, "00"

    const-string v4, "9F7A"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    sget-object v4, Lcom/unionpay/mobile/android/pro/views/k;->ad:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "9F21"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    const-string v1, "9F4E"

    const-string v4, "0000000000000000000000000000000000000000"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    const-string v1, "DF31"

    const-string v4, "0100000000"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    const-string v1, "9F66"

    const-string v4, "36800000"

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    const-string v1, "DF60"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    const-string v1, "trans_amt"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    invoke-virtual {v0, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    const-string v1, "trans currcy code"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    const-string v1, "trans_type"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "CUR"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/unionpay/mobile/android/pro/views/k;->u()Landroid/os/Bundle;

    move-result-object p1

    new-instance v0, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    sput-object v0, Lcom/unionpay/mobile/android/pro/views/k;->ac:Ljava/sql/Date;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/unionpay/mobile/android/pro/views/k;->ac:Ljava/sql/Date;

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unionpay/mobile/android/pro/views/k;->ad:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/unionpay/mobile/android/pro/views/k;->ad:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->ae:Ljava/lang/String;

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->t:Lcom/unionpay/mobile/android/pboctransaction/nfc/a;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/pboctransaction/nfc/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "action_resp_code"

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    const-string v2, "noSupUnionpay"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "10024"

    goto :goto_3

    :cond_2
    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/k;->t:Lcom/unionpay/mobile/android/pboctransaction/nfc/a;

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v3}, Lcom/unionpay/mobile/android/pboctransaction/nfc/a;->a(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    invoke-static {v0, v2}, Lcom/unionpay/mobile/android/pboctransaction/nfc/a;->b(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_4

    :cond_4
    :goto_1
    const-string v0, "10020"

    goto :goto_3

    :cond_5
    :goto_2
    const-string v0, "10019"

    :goto_3
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0000"

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->z:Landroid/os/Handler;

    invoke-virtual {v0, v7, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v6, 0x0

    :cond_6
    if-eqz v6, :cond_7

    iget-boolean p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->M:Z

    if-eqz p1, :cond_7

    const/16 p1, 0x66

    iput p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->v:I

    iput-boolean v7, p0, Lcom/unionpay/mobile/android/pro/views/k;->j:Z

    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v0, v0, Lcom/unionpay/mobile/android/languages/c;->U:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    const-string v0, "AN1"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\"pan\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\",\"carrier_tp\":\"7\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    const-string v1, "cardrules"

    invoke-virtual {v0, v1, p1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public final a(Lcom/unionpay/mobile/android/upviews/a$a;)V
    .locals 0

    return-void
.end method

.method protected final a(Ljava/lang/String;Z)V
    .locals 2

    new-instance v0, Lcom/unionpay/mobile/android/pro/views/m;

    invoke-direct {v0, p0, p2}, Lcom/unionpay/mobile/android/pro/views/m;-><init>(Lcom/unionpay/mobile/android/pro/views/k;Z)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/pro/views/k;->b:Lcom/unionpay/mobile/android/widgets/m;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/unionpay/mobile/android/pro/views/k;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v0, v0, Lcom/unionpay/mobile/android/languages/c;->Y:Ljava/lang/String;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->W:Ljava/lang/String;

    invoke-virtual {p2, v0, p1, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 15

    move-object v10, p0

    move-object/from16 v1, p1

    iget v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->v:I

    const/4 v2, 0x7

    const-string v3, "options"

    if-eq v0, v2, :cond_17

    const/4 v11, 0x0

    const-string v2, "01"

    const-string v4, "status"

    const/16 v5, 0x8

    if-eq v0, v5, :cond_13

    const-string v3, "auth_id"

    const-string v6, "encrypt_key"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    :try_start_0
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->I:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->J:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    iget-object v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->p:Ljava/util/HashMap;

    if-eqz v0, :cond_18

    iget-object v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->y:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a;->a()Lcom/unionpay/mobile/android/upviews/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a$a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/unionpay/mobile/android/upviews/a$a;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/pro/views/k;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0x65

    iput v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->v:I

    iget-object v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->y:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a;->a()Lcom/unionpay/mobile/android/upviews/a$a;

    move-result-object v0

    iget-object v0, v0, Lcom/unionpay/mobile/android/upviews/a$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/unionpay/mobile/android/pro/views/k;->t()Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/unionpay/mobile/android/pro/views/k;->b(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void

    :pswitch_1
    invoke-static {v1, v4}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "fail_msg"

    invoke-static {v1, v3}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v4, v10, Lcom/unionpay/mobile/android/pro/views/k;->u:I

    if-lez v4, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/unionpay/mobile/android/pro/views/k;->s()V

    return-void

    :cond_1
    const/16 v2, 0x64

    iput v2, v10, Lcom/unionpay/mobile/android/pro/views/k;->v:I

    const-string v4, "00"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/k;->i()V

    if-eqz v4, :cond_4

    iput v2, v10, Lcom/unionpay/mobile/android/pro/views/k;->v:I

    iget-object v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v2, "result"

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/j;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    iput-object v2, v0, Lcom/unionpay/mobile/android/model/b;->H:Lorg/json/JSONArray;

    iget-object v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v2, "openupgrade_flag"

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/unionpay/mobile/android/model/b;->P:Ljava/lang/String;

    iget-object v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v2, "temporary_pay_flag"

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/unionpay/mobile/android/model/b;->Q:Ljava/lang/String;

    iget-object v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v2, "temporary_pay_info"

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/unionpay/mobile/android/model/b;->R:Ljava/lang/String;

    iget-object v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v2, "front_url"

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/unionpay/mobile/android/model/b;->V:Ljava/lang/String;

    iget-object v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v2, "front_request"

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/unionpay/mobile/android/model/b;->W:Ljava/lang/String;

    iget-object v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v2, "title"

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/unionpay/mobile/android/model/b;->A:Ljava/lang/String;

    iget-object v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v2, "succ_info"

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/unionpay/mobile/android/model/b;->B:Ljava/lang/String;

    iget-object v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/nocard/utils/b;->b(Lorg/json/JSONObject;Lcom/unionpay/mobile/android/model/b;)V

    iget-object v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/nocard/utils/b;->a(Lorg/json/JSONObject;Lcom/unionpay/mobile/android/model/b;)V

    iget-object v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->y:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a;->f()V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v10, Lcom/unionpay/mobile/android/pro/views/k;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_succeed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->f:Z

    if-eqz v0, :cond_3

    iget-object v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->I:Lcom/unionpay/mobile/android/plugin/c;

    const-string v1, "success"

    iput-object v1, v0, Lcom/unionpay/mobile/android/plugin/c;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/k;->j()V

    return-void

    :cond_3
    invoke-virtual {p0, v5}, Lcom/unionpay/mobile/android/pro/views/k;->d(I)V

    return-void

    :cond_4
    const-string v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v10, Lcom/unionpay/mobile/android/pro/views/k;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_fail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/unionpay/mobile/android/utils/o;->j:[Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/unionpay/mobile/android/pro/views/k;->a(Ljava/lang/String;)V

    return-void

    :cond_5
    iget v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->u:I

    if-gtz v0, :cond_6

    iget-object v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->ak:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/pro/views/k;->a(Ljava/lang/String;)V

    :cond_6
    return-void

    :pswitch_2
    iget-object v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->b:Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/widgets/m;->c()V

    :try_start_1
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->I:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->J:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    iget-object v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->a:Lcom/unionpay/mobile/android/model/b;

    const/4 v12, 0x0

    invoke-static {v0, v1, v12}, Lcom/unionpay/mobile/android/nocard/utils/f;->a(Lcom/unionpay/mobile/android/model/b;Lorg/json/JSONObject;Z)I

    move-result v0

    invoke-static/range {p1 .. p1}, Lcom/unionpay/mobile/android/nocard/utils/f;->a(Lorg/json/JSONObject;)Lcom/unionpay/mobile/android/model/e;

    move-result-object v1

    iput-object v1, v10, Lcom/unionpay/mobile/android/pro/views/k;->p:Lcom/unionpay/mobile/android/model/e;

    if-eqz v0, :cond_7

    invoke-super {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/b;->b(I)V

    return-void

    :cond_7
    iput-boolean v12, v10, Lcom/unionpay/mobile/android/pro/views/k;->M:Z

    iget-object v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->S:Landroid/widget/FrameLayout;

    const v1, -0x10100c

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    invoke-virtual {p0, v1}, Lcom/unionpay/mobile/android/pro/views/k;->setBackgroundColor(I)V

    iget-object v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->F:Lcom/unionpay/mobile/android/widgets/ay;

    sget v2, Lcom/unionpay/mobile/android/global/a;->M:I

    invoke-virtual {v0, v2}, Lcom/unionpay/mobile/android/widgets/ay;->setBackgroundColor(I)V

    iget-object v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->F:Lcom/unionpay/mobile/android/widgets/ay;

    invoke-virtual {v0, v5}, Lcom/unionpay/mobile/android/widgets/ay;->a(I)V

    iget-object v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->H:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, -0x2

    const/4 v14, -0x1

    invoke-direct {v0, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, v10, Lcom/unionpay/mobile/android/pro/views/k;->p:Lcom/unionpay/mobile/android/model/e;

    const-string v2, "instalment"

    if-eqz v1, :cond_8

    iget-object v1, v10, Lcom/unionpay/mobile/android/pro/views/k;->p:Lcom/unionpay/mobile/android/model/e;

    check-cast v1, Lcom/unionpay/mobile/android/model/f;

    const-string v3, "promotion"

    invoke-virtual {v1, v3}, Lcom/unionpay/mobile/android/model/f;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v1, v2}, Lcom/unionpay/mobile/android/model/f;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    iget-object v3, v10, Lcom/unionpay/mobile/android/pro/views/k;->a:Lcom/unionpay/mobile/android/model/b;

    const-string v4, "promotion_instalment_msgbox"

    invoke-virtual {v1, v4}, Lcom/unionpay/mobile/android/model/f;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v3, Lcom/unionpay/mobile/android/model/b;->aU:Lorg/json/JSONObject;

    :cond_8
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_9

    new-instance v1, Lcom/unionpay/mobile/android/upviews/a;

    iget-object v3, v10, Lcom/unionpay/mobile/android/pro/views/k;->d:Landroid/content/Context;

    iget-object v4, v10, Lcom/unionpay/mobile/android/pro/views/k;->q:Ljava/lang/String;

    invoke-direct {v1, v3, v0, p0, v4}, Lcom/unionpay/mobile/android/upviews/a;-><init>(Landroid/content/Context;Lorg/json/JSONArray;Lcom/unionpay/mobile/android/upviews/a$b;Ljava/lang/String;)V

    iput-object v1, v10, Lcom/unionpay/mobile/android/pro/views/k;->O:Lcom/unionpay/mobile/android/upviews/a;

    iget-object v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->b:Lcom/unionpay/mobile/android/widgets/m;

    iget-object v3, v10, Lcom/unionpay/mobile/android/pro/views/k;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v3, v3, Lcom/unionpay/mobile/android/model/b;->aU:Lorg/json/JSONObject;

    invoke-virtual {v1, v0, v3}, Lcom/unionpay/mobile/android/upviews/a;->a(Lcom/unionpay/mobile/android/widgets/m;Lorg/json/JSONObject;)V

    iget-object v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->O:Lcom/unionpay/mobile/android/upviews/a;

    iget-object v1, v10, Lcom/unionpay/mobile/android/pro/views/k;->U:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upviews/a;->a(Landroid/view/View$OnClickListener;)V

    iget-object v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->O:Lcom/unionpay/mobile/android/upviews/a;

    iget-object v1, v10, Lcom/unionpay/mobile/android/pro/views/k;->V:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upviews/a;->b(Landroid/view/View$OnClickListener;)V

    iget-object v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->O:Lcom/unionpay/mobile/android/upviews/a;

    iget-object v1, v10, Lcom/unionpay/mobile/android/pro/views/k;->W:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/unionpay/mobile/android/upviews/a;->c(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v1, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v1, v10, Lcom/unionpay/mobile/android/pro/views/k;->A:Landroid/widget/LinearLayout;

    iget-object v3, v10, Lcom/unionpay/mobile/android/pro/views/k;->O:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {v1, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    iget-object v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->O:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v0, :cond_a

    invoke-virtual {v0, v2}, Lcom/unionpay/mobile/android/upviews/a;->c(Ljava/lang/String;)Lcom/unionpay/mobile/android/widgets/z;

    :cond_a
    new-instance v0, Lcom/unionpay/mobile/android/upviews/a;

    iget-object v2, v10, Lcom/unionpay/mobile/android/pro/views/k;->d:Landroid/content/Context;

    iget-object v1, v10, Lcom/unionpay/mobile/android/pro/views/k;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v3, v1, Lcom/unionpay/mobile/android/model/b;->z:Lorg/json/JSONArray;

    iget-object v1, v10, Lcom/unionpay/mobile/android/pro/views/k;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-virtual {v1}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->c()J

    move-result-wide v4

    iget-object v1, v10, Lcom/unionpay/mobile/android/pro/views/k;->af:Ljava/util/HashMap;

    const-string v6, "AN1"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    const/4 v8, 0x1

    iget-object v9, v10, Lcom/unionpay/mobile/android/pro/views/k;->q:Ljava/lang/String;

    move-object v1, v0

    move-object v6, p0

    invoke-direct/range {v1 .. v9}, Lcom/unionpay/mobile/android/upviews/a;-><init>(Landroid/content/Context;Lorg/json/JSONArray;JLcom/unionpay/mobile/android/upviews/a$b;Ljava/lang/String;ZLjava/lang/String;)V

    iput-object v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->y:Lcom/unionpay/mobile/android/upviews/a;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v1, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v1, v10, Lcom/unionpay/mobile/android/pro/views/k;->A:Landroid/widget/LinearLayout;

    iget-object v2, v10, Lcom/unionpay/mobile/android/pro/views/k;->y:Lcom/unionpay/mobile/android/upviews/a;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, v10, Lcom/unionpay/mobile/android/pro/views/k;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setId(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v3, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v3, v10, Lcom/unionpay/mobile/android/pro/views/k;->d:Landroid/content/Context;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v3, v4}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v3, v10, Lcom/unionpay/mobile/android/pro/views/k;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/k;->h()Z

    move-result v2

    if-nez v2, :cond_b

    iget-object v2, v10, Lcom/unionpay/mobile/android/pro/views/k;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->al:Lorg/json/JSONObject;

    if-nez v2, :cond_b

    iget-object v2, v10, Lcom/unionpay/mobile/android/pro/views/k;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->am:Lorg/json/JSONObject;

    if-eqz v2, :cond_d

    :cond_b
    iget-object v2, v10, Lcom/unionpay/mobile/android/pro/views/k;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->al:Lorg/json/JSONObject;

    if-eqz v2, :cond_c

    new-instance v2, Lcom/unionpay/mobile/android/upwidget/a;

    iget-object v3, v10, Lcom/unionpay/mobile/android/pro/views/k;->d:Landroid/content/Context;

    iget-object v5, v10, Lcom/unionpay/mobile/android/pro/views/k;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v5, v5, Lcom/unionpay/mobile/android/model/b;->al:Lorg/json/JSONObject;

    iget-object v6, v10, Lcom/unionpay/mobile/android/pro/views/k;->ab:Landroid/view/View$OnClickListener;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v10, Lcom/unionpay/mobile/android/pro/views/k;->q:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_agree_user_protocol"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v3, v5, v6, v7}, Lcom/unionpay/mobile/android/upwidget/a;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    iput-object v2, v10, Lcom/unionpay/mobile/android/pro/views/k;->L:Lcom/unionpay/mobile/android/upwidget/a;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_c
    iget-object v2, v10, Lcom/unionpay/mobile/android/pro/views/k;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->am:Lorg/json/JSONObject;

    if-eqz v2, :cond_d

    new-instance v2, Lcom/unionpay/mobile/android/upwidget/a;

    iget-object v3, v10, Lcom/unionpay/mobile/android/pro/views/k;->d:Landroid/content/Context;

    iget-object v5, v10, Lcom/unionpay/mobile/android/pro/views/k;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v5, v5, Lcom/unionpay/mobile/android/model/b;->am:Lorg/json/JSONObject;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v10, Lcom/unionpay/mobile/android/pro/views/k;->q:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_remember_bankNO"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v5, v11, v6}, Lcom/unionpay/mobile/android/upwidget/a;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Landroid/view/View$OnClickListener;Ljava/lang/String;)V

    iput-object v2, v10, Lcom/unionpay/mobile/android/pro/views/k;->K:Lcom/unionpay/mobile/android/upwidget/a;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v3, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v3, v10, Lcom/unionpay/mobile/android/pro/views/k;->K:Lcom/unionpay/mobile/android/upwidget/a;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_d
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v14, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v2, v10, Lcom/unionpay/mobile/android/pro/views/k;->d:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->w:Landroid/widget/TextView;

    iget-object v2, v10, Lcom/unionpay/mobile/android/pro/views/k;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v2, Lcom/unionpay/mobile/android/model/b;->C:Lorg/json/JSONObject;

    const-string v3, "label"

    invoke-static {v2, v3}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->w:Landroid/widget/TextView;

    sget v2, Lcom/unionpay/mobile/android/global/b;->i:F

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->w:Landroid/widget/TextView;

    invoke-static {}, Lcom/unionpay/mobile/android/pro/views/k;->o()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->w:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->w:Landroid/widget/TextView;

    iget-object v2, v10, Lcom/unionpay/mobile/android/pro/views/k;->y:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/unionpay/mobile/android/upviews/a;->e()Z

    move-result v2

    if-eqz v2, :cond_f

    :cond_e
    const/4 v12, 0x1

    :cond_f
    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setEnabled(Z)V

    sget v0, Lcom/unionpay/mobile/android/global/a;->n:I

    iget-object v1, v10, Lcom/unionpay/mobile/android/pro/views/k;->c:Lcom/unionpay/mobile/android/resource/c;

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2, v14, v14}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, v10, Lcom/unionpay/mobile/android/pro/views/k;->w:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v10, Lcom/unionpay/mobile/android/pro/views/k;->w:Landroid/widget/TextView;

    iget-object v2, v10, Lcom/unionpay/mobile/android/pro/views/k;->T:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v14, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    sget v0, Lcom/unionpay/mobile/android/global/a;->f:I

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->d:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->A:Landroid/widget/LinearLayout;

    iget-object v2, v10, Lcom/unionpay/mobile/android/pro/views/k;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :pswitch_3
    iget-object v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->a:Lcom/unionpay/mobile/android/model/b;

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unionpay/mobile/android/utils/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/unionpay/mobile/android/model/b;->aj:Ljava/lang/String;

    const-string v0, "qn"

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, v10, Lcom/unionpay/mobile/android/pro/views/k;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v2, v10, Lcom/unionpay/mobile/android/pro/views/k;->e:Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;

    invoke-static {v0}, Lcom/unionpay/mobile/android/utils/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/unionpay/mobile/android/nocard/utils/UPPayEngine;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/unionpay/mobile/android/model/b;->n:Ljava/lang/String;

    :cond_10
    iget-object v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->aj:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object v0, v0, Lcom/unionpay/mobile/android/model/b;->aj:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_11

    goto :goto_2

    :cond_11
    const/16 v0, 0x14

    iput v0, v10, Lcom/unionpay/mobile/android/pro/views/k;->u:I

    invoke-direct {p0}, Lcom/unionpay/mobile/android/pro/views/k;->s()V

    return-void

    :cond_12
    :goto_2
    const/4 v0, 0x2

    invoke-super {p0, v0}, Lcom/unionpay/mobile/android/nocard/views/b;->b(I)V

    return-void

    :cond_13
    invoke-static {v1, v4}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "uuid"

    invoke-static {v1, v0}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, v10, Lcom/unionpay/mobile/android/pro/views/k;->Q:I

    if-ltz v1, :cond_14

    iget-object v1, v10, Lcom/unionpay/mobile/android/pro/views/k;->P:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/unionpay/mobile/android/pro/views/k;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_14
    sget-object v0, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v0, v0, Lcom/unionpay/mobile/android/languages/c;->D:Ljava/lang/String;

    iget-object v1, v10, Lcom/unionpay/mobile/android/pro/views/k;->O:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v1, :cond_15

    invoke-virtual {v1, v11, v0}, Lcom/unionpay/mobile/android/upviews/a;->a(Lorg/json/JSONArray;Ljava/lang/String;)V

    :cond_15
    return-void

    :cond_16
    invoke-static {v1, v3}, Lcom/unionpay/mobile/android/utils/j;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-string v2, "empty_info"

    invoke-static {v1, v2}, Lcom/unionpay/mobile/android/utils/j;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v10, Lcom/unionpay/mobile/android/pro/views/k;->O:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v2, :cond_18

    invoke-virtual {v2, v0, v1}, Lcom/unionpay/mobile/android/upviews/a;->a(Lorg/json/JSONArray;Ljava/lang/String;)V

    goto :goto_3

    :cond_17
    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/k;->i()V

    invoke-static {v1, v3}, Lcom/unionpay/mobile/android/utils/j;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v1, v10, Lcom/unionpay/mobile/android/pro/views/k;->O:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v1, :cond_18

    invoke-virtual {v1, v0}, Lcom/unionpay/mobile/android/upviews/a;->a(Lorg/json/JSONArray;)V

    :cond_18
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->w:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected final b()V
    .locals 9

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/k;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v2, v2, Lcom/unionpay/mobile/android/model/b;->aD:Z

    if-eqz v2, :cond_0

    new-instance v2, Lcom/unionpay/mobile/android/widgets/ay;

    iget-object v4, p0, Lcom/unionpay/mobile/android/pro/views/k;->d:Landroid/content/Context;

    sget-object v3, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v5, v3, Lcom/unionpay/mobile/android/languages/c;->bo:Ljava/lang/String;

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/k;->c:Lcom/unionpay/mobile/android/resource/c;

    const/16 v6, 0x406

    invoke-virtual {v3, v6, v1, v1}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/k;->d:Landroid/content/Context;

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-static {v3, v7}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v7

    move-object v3, v2

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/unionpay/mobile/android/widgets/ay;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILcom/unionpay/mobile/android/widgets/ay$a;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/unionpay/mobile/android/widgets/ay;

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/k;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v4, v4, Lcom/unionpay/mobile/android/languages/c;->bo:Ljava/lang/String;

    invoke-direct {v2, v3, v4, p0}, Lcom/unionpay/mobile/android/widgets/ay;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/unionpay/mobile/android/widgets/ay$a;)V

    :goto_0
    iput-object v2, p0, Lcom/unionpay/mobile/android/pro/views/k;->F:Lcom/unionpay/mobile/android/widgets/ay;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/k;->F:Lcom/unionpay/mobile/android/widgets/ay;

    const v3, -0xfe9e44

    invoke-virtual {v2, v3}, Lcom/unionpay/mobile/android/widgets/ay;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/k;->F:Lcom/unionpay/mobile/android/widgets/ay;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/unionpay/mobile/android/widgets/ay;->a(I)V

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/k;->k:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/k;->F:Lcom/unionpay/mobile/android/widgets/ay;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final b(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/unionpay/mobile/android/nocard/views/b;->b(I)V

    return-void
.end method

.method protected final c()V
    .locals 9

    const v0, -0xaf6701

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/pro/views/k;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/k;->l:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    new-instance v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/k;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/pro/views/k;->S:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/k;->m:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/unionpay/mobile/android/pro/views/k;->S:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0}, Lcom/unionpay/mobile/android/pro/views/k;->v()I

    move-result v3

    sget v4, Lcom/unionpay/mobile/android/global/b;->n:I

    sub-int/2addr v3, v4

    sget v4, Lcom/unionpay/mobile/android/global/b;->n:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/unionpay/mobile/android/pro/views/k;->d:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/unionpay/mobile/android/pro/views/k;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setId(I)V

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/k;->A:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/k;->S:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/unionpay/mobile/android/pro/views/k;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    sget v3, Lcom/unionpay/mobile/android/global/b;->n:I

    mul-int/lit8 v3, v3, 0x2

    sget v5, Lcom/unionpay/mobile/android/global/b;->n:I

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v1, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v5, p0, Lcom/unionpay/mobile/android/pro/views/k;->d:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v3, v3, 0x2

    sget v5, Lcom/unionpay/mobile/android/global/b;->n:I

    sub-int/2addr v3, v5

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    invoke-direct {p0}, Lcom/unionpay/mobile/android/pro/views/k;->v()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sget v5, Lcom/unionpay/mobile/android/global/b;->n:I

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    new-instance v3, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/unionpay/mobile/android/pro/views/k;->d:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/unionpay/mobile/android/pro/views/k;->H:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/unionpay/mobile/android/pro/views/k;->c:Lcom/unionpay/mobile/android/resource/c;

    const/16 v6, 0x408

    invoke-virtual {v5, v6, v2, v2}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/k;->S:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/unionpay/mobile/android/pro/views/k;->H:Landroid/widget/ImageView;

    invoke-virtual {v3, v5, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/k;->d:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/pro/views/k;->E:Landroid/widget/LinearLayout;

    const/high16 v3, -0x50000000

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/k;->S:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/unionpay/mobile/android/pro/views/k;->E:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/k;->d:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/pro/views/k;->C:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/k;->S:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/unionpay/mobile/android/pro/views/k;->C:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/k;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    new-instance v1, Lcom/unionpay/mobile/android/upwidget/UPRadiationView;

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/k;->d:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/unionpay/mobile/android/upwidget/UPRadiationView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unionpay/mobile/android/pro/views/k;->G:Lcom/unionpay/mobile/android/upwidget/UPRadiationView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/k;->G:Lcom/unionpay/mobile/android/upwidget/UPRadiationView;

    invoke-virtual {v0, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->C:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setGravity(I)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/k;->d:Landroid/content/Context;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v1, v3}, Lcom/unionpay/mobile/android/utils/g;->a(Landroid/content/Context;F)I

    move-result v1

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/unionpay/mobile/android/pro/views/k;->d:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/unionpay/mobile/android/pro/views/k;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setId(I)V

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/k;->B:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/k;->B:Landroid/widget/LinearLayout;

    mul-int/lit8 v5, v1, 0x2

    invoke-virtual {v3, v5, v1, v5, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v3, p0, Lcom/unionpay/mobile/android/pro/views/k;->c:Lcom/unionpay/mobile/android/resource/c;

    const/16 v6, 0x409

    invoke-virtual {v3, v6, v2, v2}, Lcom/unionpay/mobile/android/resource/c;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v6, p0, Lcom/unionpay/mobile/android/pro/views/k;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v6, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v6, v6, Lcom/unionpay/mobile/android/languages/c;->bl:Ljava/lang/String;

    new-instance v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/unionpay/mobile/android/pro/views/k;->d:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v6, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v6, p0, Lcom/unionpay/mobile/android/pro/views/k;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    sget-object v6, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v6, v6, Lcom/unionpay/mobile/android/languages/c;->bm:Ljava/lang/String;

    new-instance v7, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/unionpay/mobile/android/pro/views/k;->d:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v8, -0xff4652

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v6, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v6, p0, Lcom/unionpay/mobile/android/pro/views/k;->aa:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/unionpay/mobile/android/pro/views/k;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v6, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0xa

    invoke-virtual {v6, v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v8, Lcom/unionpay/mobile/android/global/b;->n:I

    iput v8, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v8, p0, Lcom/unionpay/mobile/android/pro/views/k;->B:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/unionpay/mobile/android/pro/views/k;->d:Landroid/content/Context;

    invoke-direct {v6, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/unionpay/mobile/android/pro/views/k;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setId(I)V

    iget-object v6, p0, Lcom/unionpay/mobile/android/pro/views/k;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v4, p0, Lcom/unionpay/mobile/android/pro/views/k;->D:Landroid/widget/LinearLayout;

    const/16 v6, 0x11

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget-object v4, p0, Lcom/unionpay/mobile/android/pro/views/k;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5, v1, v5, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/k;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->bn:Ljava/lang/String;

    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/unionpay/mobile/android/pro/views/k;->d:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v1, Lcom/unionpay/mobile/android/global/b;->k:F

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v1, p0, Lcom/unionpay/mobile/android/pro/views/k;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xc

    invoke-virtual {v1, v3, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v2, Lcom/unionpay/mobile/android/global/b;->n:I

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/k;->D:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "action_resp_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "action_resp_message"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "0000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p0, v2, p1}, Lcom/unionpay/mobile/android/pro/views/k;->a(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "10024"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    iget-object p1, p0, Lcom/unionpay/mobile/android/pro/views/k;->a:Lcom/unionpay/mobile/android/model/b;

    iget-object p1, p1, Lcom/unionpay/mobile/android/model/b;->ap:Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lcom/unionpay/mobile/android/pro/views/k;->a(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final k()V
    .locals 5

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->aD:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/unionpay/mobile/android/pro/views/t;

    invoke-direct {v0, p0}, Lcom/unionpay/mobile/android/pro/views/t;-><init>(Lcom/unionpay/mobile/android/pro/views/k;)V

    new-instance v1, Lcom/unionpay/mobile/android/pro/views/u;

    invoke-direct {v1, p0}, Lcom/unionpay/mobile/android/pro/views/u;-><init>(Lcom/unionpay/mobile/android/pro/views/k;)V

    iget-object v2, p0, Lcom/unionpay/mobile/android/pro/views/k;->b:Lcom/unionpay/mobile/android/widgets/m;

    invoke-virtual {v2, v0, v1}, Lcom/unionpay/mobile/android/widgets/m;->a(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->b:Lcom/unionpay/mobile/android/widgets/m;

    sget-object v1, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v1, v1, Lcom/unionpay/mobile/android/languages/c;->Y:Ljava/lang/String;

    sget-object v2, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v2, v2, Lcom/unionpay/mobile/android/languages/c;->av:Ljava/lang/String;

    sget-object v3, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v3, v3, Lcom/unionpay/mobile/android/languages/c;->W:Ljava/lang/String;

    sget-object v4, Lcom/unionpay/mobile/android/languages/c;->bD:Lcom/unionpay/mobile/android/languages/c;

    iget-object v4, v4, Lcom/unionpay/mobile/android/languages/c;->X:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/unionpay/mobile/android/widgets/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->y:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->a:Lcom/unionpay/mobile/android/model/b;

    iget-boolean v0, v0, Lcom/unionpay/mobile/android/model/b;->K:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->x:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->a:Lcom/unionpay/mobile/android/model/b;

    iput-boolean v1, v0, Lcom/unionpay/mobile/android/model/b;->K:Z

    invoke-virtual {p0}, Lcom/unionpay/mobile/android/pro/views/k;->m()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->a:Lcom/unionpay/mobile/android/model/b;

    iput-boolean v1, v0, Lcom/unionpay/mobile/android/model/b;->K:Z

    iput-boolean v1, p0, Lcom/unionpay/mobile/android/pro/views/k;->M:Z

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/unionpay/mobile/android/pro/views/k;->a(I)V

    return-void
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/unionpay/mobile/android/nocard/views/b;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->y:Lcom/unionpay/mobile/android/upviews/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upviews/a;->d()Z

    :cond_0
    iget-object v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->G:Lcom/unionpay/mobile/android/upwidget/UPRadiationView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/unionpay/mobile/android/upwidget/UPRadiationView;->a()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->G:Lcom/unionpay/mobile/android/upwidget/UPRadiationView;

    iput-object v0, p0, Lcom/unionpay/mobile/android/pro/views/k;->b:Lcom/unionpay/mobile/android/widgets/m;

    return-void
.end method

.method public final r()V
    .locals 0

    return-void
.end method
