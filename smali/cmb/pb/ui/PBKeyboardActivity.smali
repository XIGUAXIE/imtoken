.class public Lcmb/pb/ui/PBKeyboardActivity;
.super Landroid/app/Activity;


# static fields
.field private static G:Lcmb/pb/ui/PBKeyboardActivity; = null

.field private static N:Lcmb/pb/ui/g; = null

.field private static synthetic O:[I = null

.field public static c:I = 0x2553

.field private static i:Lcmb/pb/ui/cmbwidget/e;

.field private static w:Landroid/os/Handler;


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Z

.field private E:Lcmb/pb/ui/f;

.field private F:F

.field private final H:Ljava/lang/String;

.field private I:Landroid/view/View$OnClickListener;

.field private J:Landroid/view/View$OnClickListener;

.field private K:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

.field private L:Landroid/view/View$OnFocusChangeListener;

.field private M:Landroid/view/View$OnTouchListener;

.field public a:Z

.field public b:Z

.field private d:F

.field private e:F

.field private f:Landroid/content/Context;

.field private g:Landroid/app/Activity;

.field private h:Landroid/inputmethodservice/KeyboardView;

.field private j:I

.field private k:Landroid/inputmethodservice/Keyboard;

.field private l:Landroid/inputmethodservice/Keyboard;

.field private m:Landroid/inputmethodservice/Keyboard;

.field private n:Landroid/inputmethodservice/Keyboard;

.field private o:Landroid/inputmethodservice/Keyboard;

.field private p:Landroid/inputmethodservice/Keyboard;

.field private q:Landroid/inputmethodservice/Keyboard;

.field private r:Landroid/inputmethodservice/Keyboard;

.field private s:Landroid/inputmethodservice/Keyboard;

.field private t:Landroid/inputmethodservice/Keyboard;

.field private u:Landroid/widget/EditText;

.field private v:Landroid/widget/TextView;

.field private x:Lcmb/pb/ui/f;

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcmb/pb/ui/PBKeyboardActivity;->d:F

    iput v0, p0, Lcmb/pb/ui/PBKeyboardActivity;->e:F

    const/4 v1, 0x0

    iput v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->j:I

    iput-boolean v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->a:Z

    iput-boolean v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->b:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcmb/pb/ui/PBKeyboardActivity;->v:Landroid/widget/TextView;

    sget-object v3, Lcmb/pb/ui/f;->a:Lcmb/pb/ui/f;

    iput-object v3, p0, Lcmb/pb/ui/PBKeyboardActivity;->x:Lcmb/pb/ui/f;

    iput-boolean v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->y:Z

    iput v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->z:I

    iput-object v2, p0, Lcmb/pb/ui/PBKeyboardActivity;->A:Ljava/lang/String;

    iput-object v2, p0, Lcmb/pb/ui/PBKeyboardActivity;->B:Ljava/lang/String;

    iput-object v2, p0, Lcmb/pb/ui/PBKeyboardActivity;->C:Ljava/lang/String;

    iput-boolean v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->D:Z

    sget-object v1, Lcmb/pb/ui/f;->a:Lcmb/pb/ui/f;

    iput-object v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->E:Lcmb/pb/ui/f;

    iput v0, p0, Lcmb/pb/ui/PBKeyboardActivity;->F:F

    const-string v0, "PBKeyboardActivity"

    iput-object v0, p0, Lcmb/pb/ui/PBKeyboardActivity;->H:Ljava/lang/String;

    new-instance v0, Lcmb/pb/ui/a;

    invoke-direct {v0, p0}, Lcmb/pb/ui/a;-><init>(Lcmb/pb/ui/PBKeyboardActivity;)V

    iput-object v0, p0, Lcmb/pb/ui/PBKeyboardActivity;->I:Landroid/view/View$OnClickListener;

    new-instance v0, Lcmb/pb/ui/b;

    invoke-direct {v0, p0}, Lcmb/pb/ui/b;-><init>(Lcmb/pb/ui/PBKeyboardActivity;)V

    iput-object v0, p0, Lcmb/pb/ui/PBKeyboardActivity;->J:Landroid/view/View$OnClickListener;

    new-instance v0, Lcmb/pb/ui/c;

    invoke-direct {v0, p0}, Lcmb/pb/ui/c;-><init>(Lcmb/pb/ui/PBKeyboardActivity;)V

    iput-object v0, p0, Lcmb/pb/ui/PBKeyboardActivity;->K:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    new-instance v0, Lcmb/pb/ui/d;

    invoke-direct {v0, p0}, Lcmb/pb/ui/d;-><init>(Lcmb/pb/ui/PBKeyboardActivity;)V

    iput-object v0, p0, Lcmb/pb/ui/PBKeyboardActivity;->L:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Lcmb/pb/ui/e;

    invoke-direct {v0, p0}, Lcmb/pb/ui/e;-><init>(Lcmb/pb/ui/PBKeyboardActivity;)V

    iput-object v0, p0, Lcmb/pb/ui/PBKeyboardActivity;->M:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method private a(Landroid/inputmethodservice/Keyboard;)V
    .locals 6

    invoke-virtual {p1}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object p1

    iget-boolean v0, p0, Lcmb/pb/ui/PBKeyboardActivity;->b:Z

    const-string v1, "drawable"

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    iput-boolean v3, p0, Lcmb/pb/ui/PBKeyboardActivity;->b:Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v4, p1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v4, :cond_2

    iget-object v4, p1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcmb/pb/ui/PBKeyboardActivity;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    iget-object v5, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v5, v5, v3

    add-int/lit8 v5, v5, 0x20

    aput v5, v4, v3

    :cond_2
    iget-object v4, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v4, v4, v3

    if-ne v4, v2, :cond_0

    :try_start_0
    const-string v4, "cmbkb_shift_normal"

    invoke-static {p0, v1, v4}, Lcmb/pb/util/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0}, Lcmb/pb/ui/PBKeyboardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p1, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcmb/pb/ui/PBKeyboardActivity;->b:Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    :goto_2
    return-void

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v4, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v4, :cond_6

    iget-object v4, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcmb/pb/ui/PBKeyboardActivity;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    iget-object v4, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    iget-object v5, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v5, v5, v3

    add-int/lit8 v5, v5, -0x20

    aput v5, v4, v3

    :cond_6
    iget-object v4, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v4, v4, v3

    if-ne v4, v2, :cond_4

    :try_start_1
    const-string v4, "cmbkb_shift_actived"

    invoke-static {p0, v1, v4}, Lcmb/pb/util/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0}, Lcmb/pb/ui/PBKeyboardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    goto :goto_1
.end method

.method public static a(Landroid/os/Handler;)V
    .locals 0

    sput-object p0, Lcmb/pb/ui/PBKeyboardActivity;->w:Landroid/os/Handler;

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    :try_start_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcmb/pb/ui/PBKeyboardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic a(Lcmb/pb/ui/PBKeyboardActivity;)V
    .locals 0

    invoke-direct {p0}, Lcmb/pb/ui/PBKeyboardActivity;->j()V

    return-void
.end method

.method static synthetic a(Lcmb/pb/ui/PBKeyboardActivity;Landroid/inputmethodservice/Keyboard;)V
    .locals 0

    invoke-direct {p0, p1}, Lcmb/pb/ui/PBKeyboardActivity;->a(Landroid/inputmethodservice/Keyboard;)V

    return-void
.end method

.method static synthetic a(Lcmb/pb/ui/PBKeyboardActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcmb/pb/ui/PBKeyboardActivity;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcmb/pb/ui/PBKeyboardActivity;Lcmb/pb/ui/f;)V
    .locals 0

    iput-object p1, p0, Lcmb/pb/ui/PBKeyboardActivity;->E:Lcmb/pb/ui/f;

    return-void
.end method

.method public static a(Lcmb/pb/ui/cmbwidget/e;)V
    .locals 0

    sput-object p0, Lcmb/pb/ui/PBKeyboardActivity;->i:Lcmb/pb/ui/cmbwidget/e;

    return-void
.end method

.method public static a(Lcmb/pb/ui/g;)V
    .locals 0

    sput-object p0, Lcmb/pb/ui/PBKeyboardActivity;->N:Lcmb/pb/ui/g;

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "abcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcmb/pb/ui/PBKeyboardActivity;->v:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcmb/pb/ui/PBKeyboardActivity;->g:Landroid/app/Activity;

    return-object p0
.end method

.method public static c()Lcmb/pb/ui/PBKeyboardActivity;
    .locals 1

    sget-object v0, Lcmb/pb/ui/PBKeyboardActivity;->G:Lcmb/pb/ui/PBKeyboardActivity;

    return-object v0
.end method

.method public static d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic d(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcmb/pb/ui/PBKeyboardActivity;->I:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic e(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/KeyboardView;
    .locals 0

    iget-object p0, p0, Lcmb/pb/ui/PBKeyboardActivity;->h:Landroid/inputmethodservice/KeyboardView;

    return-object p0
.end method

.method static synthetic e()Lcmb/pb/ui/cmbwidget/e;
    .locals 1

    sget-object v0, Lcmb/pb/ui/PBKeyboardActivity;->i:Lcmb/pb/ui/cmbwidget/e;

    return-object v0
.end method

.method static synthetic f(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/Keyboard;
    .locals 0

    iget-object p0, p0, Lcmb/pb/ui/PBKeyboardActivity;->o:Landroid/inputmethodservice/Keyboard;

    return-object p0
.end method

.method static synthetic f()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcmb/pb/ui/PBKeyboardActivity;->w:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcmb/pb/ui/PBKeyboardActivity;->u:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic g()[I
    .locals 3

    sget-object v0, Lcmb/pb/ui/PBKeyboardActivity;->O:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcmb/pb/ui/f;->values()[Lcmb/pb/ui/f;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcmb/pb/ui/f;->a:Lcmb/pb/ui/f;

    invoke-virtual {v1}, Lcmb/pb/ui/f;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcmb/pb/ui/f;->j:Lcmb/pb/ui/f;

    invoke-virtual {v1}, Lcmb/pb/ui/f;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcmb/pb/ui/f;->i:Lcmb/pb/ui/f;

    invoke-virtual {v1}, Lcmb/pb/ui/f;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcmb/pb/ui/f;->k:Lcmb/pb/ui/f;

    invoke-virtual {v1}, Lcmb/pb/ui/f;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcmb/pb/ui/f;->b:Lcmb/pb/ui/f;

    invoke-virtual {v1}, Lcmb/pb/ui/f;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lcmb/pb/ui/f;->c:Lcmb/pb/ui/f;

    invoke-virtual {v1}, Lcmb/pb/ui/f;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v1, Lcmb/pb/ui/f;->g:Lcmb/pb/ui/f;

    invoke-virtual {v1}, Lcmb/pb/ui/f;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v1, Lcmb/pb/ui/f;->f:Lcmb/pb/ui/f;

    invoke-virtual {v1}, Lcmb/pb/ui/f;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v1, Lcmb/pb/ui/f;->d:Lcmb/pb/ui/f;

    invoke-virtual {v1}, Lcmb/pb/ui/f;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v1, Lcmb/pb/ui/f;->e:Lcmb/pb/ui/f;

    invoke-virtual {v1}, Lcmb/pb/ui/f;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v1, Lcmb/pb/ui/f;->h:Lcmb/pb/ui/f;

    invoke-virtual {v1}, Lcmb/pb/ui/f;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    sput-object v0, Lcmb/pb/ui/PBKeyboardActivity;->O:[I

    return-object v0
.end method

.method private h()V
    .locals 3

    invoke-virtual {p0}, Lcmb/pb/ui/PBKeyboardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcmb/pb/ui/f;->j:Lcmb/pb/ui/f;

    invoke-virtual {v1}, Lcmb/pb/ui/f;->a()I

    move-result v1

    const-string v2, "KeyboardType"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcmb/pb/ui/f;->a(I)Lcmb/pb/ui/f;

    move-result-object v1

    iput-object v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->x:Lcmb/pb/ui/f;

    const/4 v1, 0x0

    const-string v2, "IsPassword"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcmb/pb/ui/PBKeyboardActivity;->y:Z

    const-string v2, "Length"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcmb/pb/ui/PBKeyboardActivity;->z:I

    const-string v2, "Hint"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcmb/pb/ui/PBKeyboardActivity;->A:Ljava/lang/String;

    const-string v2, "Label"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcmb/pb/ui/PBKeyboardActivity;->B:Ljava/lang/String;

    const-string v2, "OldText"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcmb/pb/ui/PBKeyboardActivity;->C:Ljava/lang/String;

    const-string v2, "UseHandler"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcmb/pb/ui/PBKeyboardActivity;->D:Z

    return-void
.end method

.method static synthetic h(Lcmb/pb/ui/PBKeyboardActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcmb/pb/ui/PBKeyboardActivity;->y:Z

    return p0
.end method

.method static synthetic i(Lcmb/pb/ui/PBKeyboardActivity;)Lcmb/pb/ui/f;
    .locals 0

    iget-object p0, p0, Lcmb/pb/ui/PBKeyboardActivity;->E:Lcmb/pb/ui/f;

    return-object p0
.end method

.method private i()V
    .locals 12

    invoke-static {}, Lcmb/pb/ui/PBKeyboardActivity;->d()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcmb/pb/ui/PBKeyboardActivity;->F:F

    sput-object p0, Lcmb/pb/ui/PBKeyboardActivity;->G:Lcmb/pb/ui/PBKeyboardActivity;

    iput-object p0, p0, Lcmb/pb/ui/PBKeyboardActivity;->g:Landroid/app/Activity;

    iput-object p0, p0, Lcmb/pb/ui/PBKeyboardActivity;->f:Landroid/content/Context;

    const-string v0, "id"

    const-string v1, "edit_cmbinput"

    invoke-static {p0, v0, v1}, Lcmb/pb/util/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcmb/pb/ui/PBKeyboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->u:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "android.os.Build.VERSION.SDK_INT:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PBKeyboardActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/16 v5, 0xa

    if-gt v1, v5, :cond_0

    iget-object v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->u:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcmb/pb/ui/PBKeyboardActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    :try_start_0
    const-class v1, Landroid/widget/EditText;

    const-string/jumbo v5, "setSoftInputShownOnFocus"

    new-array v6, v2, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v5, p0, Lcmb/pb/ui/PBKeyboardActivity;->u:Landroid/widget/EditText;

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v4, v6, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    const-class v1, Landroid/widget/EditText;

    const-string/jumbo v5, "setShowSoftInputOnFocus"

    new-array v6, v2, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v5, p0, Lcmb/pb/ui/PBKeyboardActivity;->u:Landroid/widget/EditText;

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v4, v6, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    nop

    :goto_0
    iget-boolean v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->y:Z

    const-string v4, ""

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->u:Landroid/widget/EditText;

    const/16 v5, 0x81

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->u:Landroid/widget/EditText;

    const/16 v5, 0x90

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->u:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :goto_1
    iget v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->z:I

    if-lez v1, :cond_2

    iget-object v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->u:Landroid/widget/EditText;

    new-array v5, v2, [Landroid/text/InputFilter;

    new-instance v6, Landroid/text/InputFilter$LengthFilter;

    iget v7, p0, Lcmb/pb/ui/PBKeyboardActivity;->z:I

    invoke-direct {v6, v7}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v6, v5, v3

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_2
    iget-object v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->A:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->u:Landroid/widget/EditText;

    iget-object v5, p0, Lcmb/pb/ui/PBKeyboardActivity;->A:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    :try_start_2
    const-string/jumbo v1, "string"

    const-string v5, "cmbkb_please_input"

    invoke-static {p0, v1, v5}, Lcmb/pb/util/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcmb/pb/ui/PBKeyboardActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcmb/pb/ui/PBKeyboardActivity;->u:Landroid/widget/EditText;

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    nop

    :goto_2
    iget-object v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->B:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    const-string v1, "cmbkb_tvLabel_id"

    invoke-static {p0, v0, v1}, Lcmb/pb/util/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcmb/pb/ui/PBKeyboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-object v5, p0, Lcmb/pb/ui/PBKeyboardActivity;->B:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->C:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v5, p0, Lcmb/pb/ui/PBKeyboardActivity;->u:Landroid/widget/EditText;

    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->u:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    instance-of v5, v1, Landroid/text/Spannable;

    if-eqz v5, :cond_5

    move-object v5, v1

    check-cast v5, Landroid/text/Spannable;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v5, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_5
    iget-object v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->u:Landroid/widget/EditText;

    iget-object v5, p0, Lcmb/pb/ui/PBKeyboardActivity;->L:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->u:Landroid/widget/EditText;

    iget-object v5, p0, Lcmb/pb/ui/PBKeyboardActivity;->M:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-boolean v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->D:Z

    const/16 v5, 0x8

    if-eqz v1, :cond_9

    const-string v1, "cmbkb_tvLabel"

    invoke-static {p0, v0, v1}, Lcmb/pb/util/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcmb/pb/ui/PBKeyboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_6

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    iget-object v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->u:Landroid/widget/EditText;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_7
    iget-object v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->C:Ljava/lang/String;

    if-eqz v1, :cond_8

    move-object v4, v1

    :cond_8
    sget-object v1, Lcmb/pb/ui/PBKeyboardActivity;->w:Landroid/os/Handler;

    if-eqz v1, :cond_9

    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    iput v2, v6, Landroid/os/Message;->what:I

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v8, "KeyString"

    invoke-virtual {v7, v8, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_9
    const-string v1, "cmbkb_safeSign"

    invoke-static {p0, v0, v1}, Lcmb/pb/util/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcmb/pb/ui/PBKeyboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_c

    iget-object v4, p0, Lcmb/pb/ui/PBKeyboardActivity;->x:Lcmb/pb/ui/f;

    sget-object v6, Lcmb/pb/ui/f;->d:Lcmb/pb/ui/f;

    if-eq v4, v6, :cond_b

    iget-object v4, p0, Lcmb/pb/ui/PBKeyboardActivity;->x:Lcmb/pb/ui/f;

    sget-object v6, Lcmb/pb/ui/f;->e:Lcmb/pb/ui/f;

    if-eq v4, v6, :cond_b

    iget-object v4, p0, Lcmb/pb/ui/PBKeyboardActivity;->x:Lcmb/pb/ui/f;

    sget-object v6, Lcmb/pb/ui/f;->f:Lcmb/pb/ui/f;

    if-ne v4, v6, :cond_a

    goto :goto_3

    :cond_a
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_b
    :goto_3
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    :goto_4
    const-string v1, "cmbkb_tvComplete"

    invoke-static {p0, v0, v1}, Lcmb/pb/util/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcmb/pb/ui/PBKeyboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->v:Landroid/widget/TextView;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->x:Lcmb/pb/ui/f;

    sget-object v4, Lcmb/pb/ui/f;->d:Lcmb/pb/ui/f;

    if-eq v1, v4, :cond_e

    iget-object v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->x:Lcmb/pb/ui/f;

    sget-object v4, Lcmb/pb/ui/f;->e:Lcmb/pb/ui/f;

    if-eq v1, v4, :cond_e

    iget-object v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->x:Lcmb/pb/ui/f;

    sget-object v4, Lcmb/pb/ui/f;->f:Lcmb/pb/ui/f;

    if-eq v1, v4, :cond_e

    iget-object v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->x:Lcmb/pb/ui/f;

    sget-object v4, Lcmb/pb/ui/f;->j:Lcmb/pb/ui/f;

    if-eq v1, v4, :cond_e

    iget-object v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->x:Lcmb/pb/ui/f;

    sget-object v4, Lcmb/pb/ui/f;->k:Lcmb/pb/ui/f;

    if-eq v1, v4, :cond_e

    iget-object v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->x:Lcmb/pb/ui/f;

    sget-object v4, Lcmb/pb/ui/f;->i:Lcmb/pb/ui/f;

    if-ne v1, v4, :cond_d

    goto :goto_5

    :cond_d
    iget-object v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->v:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    :cond_e
    :goto_5
    iget-object v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->v:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->v:Landroid/widget/TextView;

    iget-object v4, p0, Lcmb/pb/ui/PBKeyboardActivity;->I:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_f
    :goto_6
    const-string/jumbo v1, "xml"

    const-string v4, "cmbkb_number"

    invoke-static {p0, v1, v4}, Lcmb/pb/util/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const-string v5, "cmbkb_number_symbols"

    invoke-static {p0, v1, v5}, Lcmb/pb/util/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const-string v6, "cmbkb_number_with_dot"

    invoke-static {p0, v1, v6}, Lcmb/pb/util/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const-string v7, "cmbkb_number_with_x"

    invoke-static {p0, v1, v7}, Lcmb/pb/util/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const-string v8, "cmbkb_number_with_change"

    invoke-static {p0, v1, v8}, Lcmb/pb/util/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    const-string v9, "cmbkb_symbols"

    invoke-static {p0, v1, v9}, Lcmb/pb/util/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    const-string v10, "cmbkb_qwerty"

    invoke-static {p0, v1, v10}, Lcmb/pb/util/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v10, Landroid/inputmethodservice/Keyboard;

    iget-object v11, p0, Lcmb/pb/ui/PBKeyboardActivity;->f:Landroid/content/Context;

    invoke-direct {v10, v11, v4}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v10, p0, Lcmb/pb/ui/PBKeyboardActivity;->k:Landroid/inputmethodservice/Keyboard;

    new-instance v4, Landroid/inputmethodservice/Keyboard;

    iget-object v10, p0, Lcmb/pb/ui/PBKeyboardActivity;->f:Landroid/content/Context;

    invoke-direct {v4, v10, v5}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcmb/pb/ui/PBKeyboardActivity;->l:Landroid/inputmethodservice/Keyboard;

    new-instance v4, Landroid/inputmethodservice/Keyboard;

    iget-object v5, p0, Lcmb/pb/ui/PBKeyboardActivity;->f:Landroid/content/Context;

    invoke-direct {v4, v5, v6}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcmb/pb/ui/PBKeyboardActivity;->m:Landroid/inputmethodservice/Keyboard;

    new-instance v4, Landroid/inputmethodservice/Keyboard;

    iget-object v5, p0, Lcmb/pb/ui/PBKeyboardActivity;->f:Landroid/content/Context;

    invoke-direct {v4, v5, v7}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcmb/pb/ui/PBKeyboardActivity;->n:Landroid/inputmethodservice/Keyboard;

    new-instance v4, Landroid/inputmethodservice/Keyboard;

    iget-object v5, p0, Lcmb/pb/ui/PBKeyboardActivity;->f:Landroid/content/Context;

    invoke-direct {v4, v5, v8}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcmb/pb/ui/PBKeyboardActivity;->o:Landroid/inputmethodservice/Keyboard;

    new-instance v4, Landroid/inputmethodservice/Keyboard;

    iget-object v5, p0, Lcmb/pb/ui/PBKeyboardActivity;->f:Landroid/content/Context;

    invoke-direct {v4, v5, v9}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcmb/pb/ui/PBKeyboardActivity;->p:Landroid/inputmethodservice/Keyboard;

    new-instance v4, Landroid/inputmethodservice/Keyboard;

    iget-object v5, p0, Lcmb/pb/ui/PBKeyboardActivity;->f:Landroid/content/Context;

    invoke-direct {v4, v5, v1}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcmb/pb/ui/PBKeyboardActivity;->q:Landroid/inputmethodservice/Keyboard;

    iget-object v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->k:Landroid/inputmethodservice/Keyboard;

    invoke-static {v1}, Lcmb/pb/cmbsafe/a;->a(Landroid/inputmethodservice/Keyboard;)V

    iget-object v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->l:Landroid/inputmethodservice/Keyboard;

    invoke-static {v1}, Lcmb/pb/cmbsafe/a;->a(Landroid/inputmethodservice/Keyboard;)V

    iget-object v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->m:Landroid/inputmethodservice/Keyboard;

    invoke-static {v1}, Lcmb/pb/cmbsafe/a;->a(Landroid/inputmethodservice/Keyboard;)V

    iget-object v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->n:Landroid/inputmethodservice/Keyboard;

    invoke-static {v1}, Lcmb/pb/cmbsafe/a;->a(Landroid/inputmethodservice/Keyboard;)V

    iget-object v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->o:Landroid/inputmethodservice/Keyboard;

    invoke-static {v1}, Lcmb/pb/cmbsafe/a;->a(Landroid/inputmethodservice/Keyboard;)V

    const-string v1, "cmbkeyboard_view"

    invoke-static {p0, v0, v1}, Lcmb/pb/util/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->g:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/KeyboardView;

    iput-object v0, p0, Lcmb/pb/ui/PBKeyboardActivity;->h:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0, v2}, Landroid/inputmethodservice/KeyboardView;->setEnabled(Z)V

    iget-object v0, p0, Lcmb/pb/ui/PBKeyboardActivity;->h:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0, v3}, Landroid/inputmethodservice/KeyboardView;->setPreviewEnabled(Z)V

    iget-object v0, p0, Lcmb/pb/ui/PBKeyboardActivity;->h:Landroid/inputmethodservice/KeyboardView;

    iget-object v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->K:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    invoke-static {}, Lcmb/pb/ui/PBKeyboardActivity;->g()[I

    move-result-object v0

    iget-object v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->x:Lcmb/pb/ui/f;

    invoke-virtual {v1}, Lcmb/pb/ui/f;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_8

    :pswitch_0
    iget-object v0, p0, Lcmb/pb/ui/PBKeyboardActivity;->h:Landroid/inputmethodservice/KeyboardView;

    iget-object v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->t:Landroid/inputmethodservice/Keyboard;

    goto :goto_7

    :pswitch_1
    iget-object v0, p0, Lcmb/pb/ui/PBKeyboardActivity;->h:Landroid/inputmethodservice/KeyboardView;

    iget-object v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->r:Landroid/inputmethodservice/Keyboard;

    goto :goto_7

    :pswitch_2
    iget-object v0, p0, Lcmb/pb/ui/PBKeyboardActivity;->h:Landroid/inputmethodservice/KeyboardView;

    iget-object v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->s:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    iget-object v0, p0, Lcmb/pb/ui/PBKeyboardActivity;->x:Lcmb/pb/ui/f;

    iput-object v0, p0, Lcmb/pb/ui/PBKeyboardActivity;->E:Lcmb/pb/ui/f;

    goto :goto_8

    :pswitch_3
    iget-object v0, p0, Lcmb/pb/ui/PBKeyboardActivity;->h:Landroid/inputmethodservice/KeyboardView;

    iget-object v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->l:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    iget-object v0, p0, Lcmb/pb/ui/PBKeyboardActivity;->x:Lcmb/pb/ui/f;

    iput-object v0, p0, Lcmb/pb/ui/PBKeyboardActivity;->E:Lcmb/pb/ui/f;

    :pswitch_4
    iget-object v0, p0, Lcmb/pb/ui/PBKeyboardActivity;->h:Landroid/inputmethodservice/KeyboardView;

    iget-object v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->p:Landroid/inputmethodservice/Keyboard;

    :goto_7
    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    iget-object v0, p0, Lcmb/pb/ui/PBKeyboardActivity;->x:Lcmb/pb/ui/f;

    goto :goto_9

    :pswitch_5
    iget-object v0, p0, Lcmb/pb/ui/PBKeyboardActivity;->h:Landroid/inputmethodservice/KeyboardView;

    iget-object v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->o:Landroid/inputmethodservice/Keyboard;

    goto :goto_7

    :pswitch_6
    iget-object v0, p0, Lcmb/pb/ui/PBKeyboardActivity;->h:Landroid/inputmethodservice/KeyboardView;

    iget-object v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->n:Landroid/inputmethodservice/Keyboard;

    goto :goto_7

    :pswitch_7
    iget-object v0, p0, Lcmb/pb/ui/PBKeyboardActivity;->h:Landroid/inputmethodservice/KeyboardView;

    iget-object v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->m:Landroid/inputmethodservice/Keyboard;

    goto :goto_7

    :pswitch_8
    iget-object v0, p0, Lcmb/pb/ui/PBKeyboardActivity;->h:Landroid/inputmethodservice/KeyboardView;

    iget-object v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->k:Landroid/inputmethodservice/Keyboard;

    goto :goto_7

    :pswitch_9
    iget-object v0, p0, Lcmb/pb/ui/PBKeyboardActivity;->h:Landroid/inputmethodservice/KeyboardView;

    iget-object v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->q:Landroid/inputmethodservice/Keyboard;

    goto :goto_7

    :goto_8
    iget-object v0, p0, Lcmb/pb/ui/PBKeyboardActivity;->h:Landroid/inputmethodservice/KeyboardView;

    iget-object v1, p0, Lcmb/pb/ui/PBKeyboardActivity;->s:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    sget-object v0, Lcmb/pb/ui/f;->i:Lcmb/pb/ui/f;

    :goto_9
    iput-object v0, p0, Lcmb/pb/ui/PBKeyboardActivity;->E:Lcmb/pb/ui/f;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic j(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/Keyboard;
    .locals 0

    iget-object p0, p0, Lcmb/pb/ui/PBKeyboardActivity;->q:Landroid/inputmethodservice/Keyboard;

    return-object p0
.end method

.method private j()V
    .locals 3

    invoke-virtual {p0}, Lcmb/pb/ui/PBKeyboardActivity;->a()V

    iget-object v0, p0, Lcmb/pb/ui/PBKeyboardActivity;->u:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcmb/pb/util/a;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "text4set"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcmb/pb/ui/PBKeyboardActivity;->setResult(ILandroid/content/Intent;)V

    :cond_1
    invoke-virtual {p0}, Lcmb/pb/ui/PBKeyboardActivity;->finish()V

    return-void
.end method

.method static synthetic k(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/Keyboard;
    .locals 0

    iget-object p0, p0, Lcmb/pb/ui/PBKeyboardActivity;->r:Landroid/inputmethodservice/Keyboard;

    return-object p0
.end method

.method static synthetic l(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/Keyboard;
    .locals 0

    iget-object p0, p0, Lcmb/pb/ui/PBKeyboardActivity;->p:Landroid/inputmethodservice/Keyboard;

    return-object p0
.end method

.method static synthetic m(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/Keyboard;
    .locals 0

    iget-object p0, p0, Lcmb/pb/ui/PBKeyboardActivity;->l:Landroid/inputmethodservice/Keyboard;

    return-object p0
.end method

.method static synthetic n(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcmb/pb/ui/PBKeyboardActivity;->J:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic o(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/Keyboard;
    .locals 0

    iget-object p0, p0, Lcmb/pb/ui/PBKeyboardActivity;->s:Landroid/inputmethodservice/Keyboard;

    return-object p0
.end method

.method static synthetic p(Lcmb/pb/ui/PBKeyboardActivity;)Landroid/inputmethodservice/Keyboard;
    .locals 0

    iget-object p0, p0, Lcmb/pb/ui/PBKeyboardActivity;->t:Landroid/inputmethodservice/Keyboard;

    return-object p0
.end method

.method static synthetic q(Lcmb/pb/ui/PBKeyboardActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcmb/pb/ui/PBKeyboardActivity;->D:Z

    return p0
.end method

.method static synthetic r(Lcmb/pb/ui/PBKeyboardActivity;)I
    .locals 0

    iget p0, p0, Lcmb/pb/ui/PBKeyboardActivity;->z:I

    return p0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcmb/pb/ui/PBKeyboardActivity;->h:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcmb/pb/ui/PBKeyboardActivity;->h:Landroid/inputmethodservice/KeyboardView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/KeyboardView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcmb/pb/ui/PBKeyboardActivity;->C:Ljava/lang/String;

    iget-object v0, p0, Lcmb/pb/ui/PBKeyboardActivity;->u:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "layout"

    const-string v0, "cmbkeyboard"

    invoke-static {p0, p1, v0}, Lcmb/pb/util/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcmb/pb/ui/PBKeyboardActivity;->setContentView(I)V

    invoke-direct {p0}, Lcmb/pb/ui/PBKeyboardActivity;->h()V

    invoke-direct {p0}, Lcmb/pb/ui/PBKeyboardActivity;->i()V

    invoke-virtual {p0}, Lcmb/pb/ui/PBKeyboardActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p0}, Lcmb/pb/ui/PBKeyboardActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result p1

    int-to-double v1, p1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    mul-double v1, v1, v3

    double-to-int p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const/4 p1, 0x0

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p0}, Lcmb/pb/ui/PBKeyboardActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x7d6

    invoke-virtual {p1, v1}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0}, Lcmb/pb/ui/PBKeyboardActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-static {p0}, Lcmb/pb/util/i;->a(Landroid/content/Context;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    sget-object v0, Lcmb/pb/ui/PBKeyboardActivity;->w:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget v2, p0, Lcmb/pb/ui/PBKeyboardActivity;->d:F

    const-string/jumbo v3, "rawX"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget v2, p0, Lcmb/pb/ui/PBKeyboardActivity;->e:F

    const-string/jumbo v3, "rawY"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    sget-object v1, Lcmb/pb/ui/PBKeyboardActivity;->w:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x0

    sput-object v0, Lcmb/pb/ui/PBKeyboardActivity;->w:Landroid/os/Handler;

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcmb/pb/ui/PBKeyboardActivity;->g:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcmb/pb/ui/PBKeyboardActivity;->g:Landroid/app/Activity;

    const-class v3, Lcmb/pb/cmbsafe/CmbService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcmb/pb/ui/PBKeyboardActivity;->d:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v0, p0, Lcmb/pb/ui/PBKeyboardActivity;->F:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcmb/pb/ui/PBKeyboardActivity;->e:F

    invoke-virtual {p0}, Lcmb/pb/ui/PBKeyboardActivity;->finish()V

    const/4 p1, 0x1

    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    if-eqz p1, :cond_1

    sget-object p1, Lcmb/pb/ui/PBKeyboardActivity;->N:Lcmb/pb/ui/g;

    if-eqz p1, :cond_1

    iget p1, p0, Lcmb/pb/ui/PBKeyboardActivity;->j:I

    if-nez p1, :cond_0

    const-string p1, "id"

    const-string v0, "cmbkb_contentLayout"

    invoke-static {p0, p1, v0}, Lcmb/pb/util/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcmb/pb/ui/PBKeyboardActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcmb/pb/ui/PBKeyboardActivity;->j:I

    :cond_0
    sget-object p1, Lcmb/pb/ui/PBKeyboardActivity;->N:Lcmb/pb/ui/g;

    iget v0, p0, Lcmb/pb/ui/PBKeyboardActivity;->j:I

    invoke-interface {p1, v0}, Lcmb/pb/ui/g;->a(I)V

    :cond_1
    return-void
.end method
