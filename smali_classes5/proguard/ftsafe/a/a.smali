.class public Lproguard/ftsafe/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final j:I

.field private static final k:I

.field private static final l:I

.field private static final m:I

.field private static final n:I

.field private static final o:I


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:[Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:Lproguard/ftsafe/a/h;

.field private g:Landroid/app/AlertDialog;

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/EditText;

.field private p:Lproguard/ftsafe/a/g;

.field private q:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#FF818080"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lproguard/ftsafe/a/a;->j:I

    const-string v0, "#FF2B2B2B"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lproguard/ftsafe/a/a;->k:I

    const-string v0, "#FF47CBFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lproguard/ftsafe/a/a;->l:I

    const-string v0, "#FF95E1FF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lproguard/ftsafe/a/a;->m:I

    const-string v0, "#FFD6D9D9"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lproguard/ftsafe/a/a;->n:I

    const-string v0, "#FFFAFAFA"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lproguard/ftsafe/a/a;->o:I

    return-void
.end method

.method private constructor <init>(Lproguard/ftsafe/a/f;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lproguard/ftsafe/a/b;

    invoke-direct {v0, p0}, Lproguard/ftsafe/a/b;-><init>(Lproguard/ftsafe/a/a;)V

    iput-object v0, p0, Lproguard/ftsafe/a/a;->q:Landroid/content/BroadcastReceiver;

    invoke-static {p1}, Lproguard/ftsafe/a/f;->a(Lproguard/ftsafe/a/f;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lproguard/ftsafe/a/a;->a:Landroid/content/Context;

    invoke-static {p1}, Lproguard/ftsafe/a/f;->b(Lproguard/ftsafe/a/f;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lproguard/ftsafe/a/a;->b:Ljava/lang/String;

    invoke-static {p1}, Lproguard/ftsafe/a/f;->c(Lproguard/ftsafe/a/f;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lproguard/ftsafe/a/a;->c:[Ljava/lang/String;

    invoke-static {p1}, Lproguard/ftsafe/a/f;->d(Lproguard/ftsafe/a/f;)I

    move-result v0

    iput v0, p0, Lproguard/ftsafe/a/a;->d:I

    invoke-static {p1}, Lproguard/ftsafe/a/f;->e(Lproguard/ftsafe/a/f;)I

    move-result v0

    iput v0, p0, Lproguard/ftsafe/a/a;->e:I

    invoke-static {p1}, Lproguard/ftsafe/a/f;->f(Lproguard/ftsafe/a/f;)Lproguard/ftsafe/a/h;

    move-result-object p1

    iput-object p1, p0, Lproguard/ftsafe/a/a;->f:Lproguard/ftsafe/a/h;

    new-instance p1, Lproguard/ftsafe/a/g;

    iget-object v0, p0, Lproguard/ftsafe/a/a;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lproguard/ftsafe/a/g;-><init>(Landroid/content/Context;Lproguard/ftsafe/a/b;)V

    iput-object p1, p0, Lproguard/ftsafe/a/a;->p:Lproguard/ftsafe/a/g;

    invoke-direct {p0}, Lproguard/ftsafe/a/a;->e()V

    invoke-direct {p0}, Lproguard/ftsafe/a/a;->c()V

    return-void
.end method

.method synthetic constructor <init>(Lproguard/ftsafe/a/f;Lproguard/ftsafe/a/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lproguard/ftsafe/a/a;-><init>(Lproguard/ftsafe/a/f;)V

    return-void
.end method

.method private a(F)I
    .locals 1

    iget-object v0, p0, Lproguard/ftsafe/a/a;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method static synthetic a(Lproguard/ftsafe/a/a;)I
    .locals 0

    iget p0, p0, Lproguard/ftsafe/a/a;->d:I

    return p0
.end method

.method private a(Landroid/widget/LinearLayout;)V
    .locals 4

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lproguard/ftsafe/a/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x41700000    # 15.0f

    invoke-direct {p0, v2}, Lproguard/ftsafe/a/a;->a(F)I

    move-result v2

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x2

    const/high16 v2, 0x41880000    # 17.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    sget v1, Lproguard/ftsafe/a/a;->k:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lproguard/ftsafe/a/a;->p:Lproguard/ftsafe/a/g;

    invoke-static {v1}, Lproguard/ftsafe/a/g;->a(Lproguard/ftsafe/a/g;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lproguard/ftsafe/a/a;->p:Lproguard/ftsafe/a/g;

    invoke-static {v2}, Lproguard/ftsafe/a/g;->b(Lproguard/ftsafe/a/g;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lproguard/ftsafe/a/a;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lproguard/ftsafe/a/a;->h:Landroid/widget/Button;

    return-object p0
.end method

.method private b(Landroid/widget/LinearLayout;)V
    .locals 5

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lproguard/ftsafe/a/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x41000000    # 8.0f

    invoke-direct {p0, v2}, Lproguard/ftsafe/a/a;->a(F)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v2, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x2

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    sget v1, Lproguard/ftsafe/a/a;->k:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lproguard/ftsafe/a/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lproguard/ftsafe/a/a;->p:Lproguard/ftsafe/a/g;

    invoke-static {v2}, Lproguard/ftsafe/a/g;->c(Lproguard/ftsafe/a/g;)[Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lproguard/ftsafe/a/a;->p:Lproguard/ftsafe/a/g;

    invoke-static {v4}, Lproguard/ftsafe/a/g;->b(Lproguard/ftsafe/a/g;)I

    move-result v4

    aget-object v2, v2, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v3

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic c(Lproguard/ftsafe/a/a;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lproguard/ftsafe/a/a;->g:Landroid/app/AlertDialog;

    return-object p0
.end method

.method private c()V
    .locals 4

    iget-object v0, p0, Lproguard/ftsafe/a/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lproguard/ftsafe/a/a;->q:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private c(Landroid/widget/LinearLayout;)V
    .locals 6

    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lproguard/ftsafe/a/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lproguard/ftsafe/a/a;->i:Landroid/widget/EditText;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x41200000    # 10.0f

    invoke-direct {p0, v2}, Lproguard/ftsafe/a/a;->a(F)I

    move-result v2

    const/high16 v3, 0x41c80000    # 25.0f

    invoke-direct {p0, v3}, Lproguard/ftsafe/a/a;->a(F)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lproguard/ftsafe/a/a;->i:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p0, Lproguard/ftsafe/a/a;->e:I

    const/4 v2, 0x1

    if-lez v0, :cond_0

    new-array v0, v2, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    iget v5, p0, Lproguard/ftsafe/a/a;->e:I

    invoke-direct {v3, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v0, v4

    iget-object v3, p0, Lproguard/ftsafe/a/a;->i:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_0
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    sget v1, Lproguard/ftsafe/a/a;->n:I

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iget-object v1, p0, Lproguard/ftsafe/a/a;->i:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lproguard/ftsafe/a/a;->i:Landroid/widget/EditText;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v3, v1}, Landroid/widget/EditText;->setTextSize(IF)V

    const/high16 v0, 0x41000000    # 8.0f

    invoke-direct {p0, v0}, Lproguard/ftsafe/a/a;->a(F)I

    move-result v0

    iget-object v1, p0, Lproguard/ftsafe/a/a;->i:Landroid/widget/EditText;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/EditText;->setPadding(IIII)V

    iget-object v0, p0, Lproguard/ftsafe/a/a;->i:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    iget-object v0, p0, Lproguard/ftsafe/a/a;->i:Landroid/widget/EditText;

    sget v1, Lproguard/ftsafe/a/a;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v0, p0, Lproguard/ftsafe/a/a;->i:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lproguard/ftsafe/a/a;->i:Landroid/widget/EditText;

    new-array v1, v2, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lproguard/ftsafe/a/a;->i:Landroid/widget/EditText;

    iget-object v1, p0, Lproguard/ftsafe/a/a;->p:Lproguard/ftsafe/a/g;

    invoke-static {v1}, Lproguard/ftsafe/a/g;->d(Lproguard/ftsafe/a/g;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lproguard/ftsafe/a/a;->p:Lproguard/ftsafe/a/g;

    invoke-static {v2}, Lproguard/ftsafe/a/g;->b(Lproguard/ftsafe/a/g;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lproguard/ftsafe/a/a;->i:Landroid/widget/EditText;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    iget-object v0, p0, Lproguard/ftsafe/a/a;->i:Landroid/widget/EditText;

    new-instance v1, Lproguard/ftsafe/a/c;

    invoke-direct {v1, p0}, Lproguard/ftsafe/a/c;-><init>(Lproguard/ftsafe/a/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lproguard/ftsafe/a/a;->i:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic d(Lproguard/ftsafe/a/a;)Lproguard/ftsafe/a/h;
    .locals 0

    iget-object p0, p0, Lproguard/ftsafe/a/a;->f:Lproguard/ftsafe/a/h;

    return-object p0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lproguard/ftsafe/a/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lproguard/ftsafe/a/a;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private d(Landroid/widget/LinearLayout;)V
    .locals 4

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lproguard/ftsafe/a/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v2, 0x41000000    # 8.0f

    invoke-direct {p0, v2}, Lproguard/ftsafe/a/a;->a(F)I

    move-result v2

    const/high16 v3, 0x41c80000    # 25.0f

    invoke-direct {p0, v3}, Lproguard/ftsafe/a/a;->a(F)I

    move-result v3

    invoke-virtual {v1, v3, v2, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x2

    const/high16 v2, 0x41500000    # 13.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    sget v1, Lproguard/ftsafe/a/a;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lproguard/ftsafe/a/a;->c:[Ljava/lang/String;

    iget-object v2, p0, Lproguard/ftsafe/a/a;->p:Lproguard/ftsafe/a/g;

    invoke-static {v2}, Lproguard/ftsafe/a/g;->b(Lproguard/ftsafe/a/g;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic e(Lproguard/ftsafe/a/a;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lproguard/ftsafe/a/a;->i:Landroid/widget/EditText;

    return-object p0
.end method

.method private e()V
    .locals 4

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lproguard/ftsafe/a/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v3, 0x41700000    # 15.0f

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, v0}, Lproguard/ftsafe/a/a;->a(Landroid/widget/LinearLayout;)V

    invoke-direct {p0, v0}, Lproguard/ftsafe/a/a;->b(Landroid/widget/LinearLayout;)V

    invoke-direct {p0, v0}, Lproguard/ftsafe/a/a;->c(Landroid/widget/LinearLayout;)V

    invoke-direct {p0, v0}, Lproguard/ftsafe/a/a;->d(Landroid/widget/LinearLayout;)V

    invoke-direct {p0, v0}, Lproguard/ftsafe/a/a;->e(Landroid/widget/LinearLayout;)V

    invoke-direct {p0, v0}, Lproguard/ftsafe/a/a;->f(Landroid/widget/LinearLayout;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lproguard/ftsafe/a/a;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lproguard/ftsafe/a/a;->g:Landroid/app/AlertDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v1, p0, Lproguard/ftsafe/a/a;->g:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    return-void
.end method

.method private e(Landroid/widget/LinearLayout;)V
    .locals 4

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lproguard/ftsafe/a/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v1, Lproguard/ftsafe/a/a;->n:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private f(Landroid/widget/LinearLayout;)V
    .locals 4

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lproguard/ftsafe/a/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v1, Lproguard/ftsafe/a/a;->o:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    invoke-direct {p0, v0}, Lproguard/ftsafe/a/a;->g(Landroid/widget/LinearLayout;)V

    invoke-direct {p0, v0}, Lproguard/ftsafe/a/a;->h(Landroid/widget/LinearLayout;)V

    invoke-direct {p0, v0}, Lproguard/ftsafe/a/a;->i(Landroid/widget/LinearLayout;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private g(Landroid/widget/LinearLayout;)V
    .locals 5

    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lproguard/ftsafe/a/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lproguard/ftsafe/a/a;->p:Lproguard/ftsafe/a/g;

    invoke-static {v1}, Lproguard/ftsafe/a/g;->e(Lproguard/ftsafe/a/g;)[Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lproguard/ftsafe/a/a;->p:Lproguard/ftsafe/a/g;

    invoke-static {v3}, Lproguard/ftsafe/a/g;->b(Lproguard/ftsafe/a/g;)I

    move-result v3

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setAllCaps(Z)V

    sget v1, Lproguard/ftsafe/a/a;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    const/4 v1, 0x2

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V

    new-instance v1, Lproguard/ftsafe/a/d;

    invoke-direct {v1, p0}, Lproguard/ftsafe/a/d;-><init>(Lproguard/ftsafe/a/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private h(Landroid/widget/LinearLayout;)V
    .locals 4

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lproguard/ftsafe/a/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v1, Lproguard/ftsafe/a/a;->n:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private i(Landroid/widget/LinearLayout;)V
    .locals 7

    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lproguard/ftsafe/a/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lproguard/ftsafe/a/a;->h:Landroid/widget/Button;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v2, p0, Lproguard/ftsafe/a/a;->h:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lproguard/ftsafe/a/a;->h:Landroid/widget/Button;

    iget-object v2, p0, Lproguard/ftsafe/a/a;->p:Lproguard/ftsafe/a/g;

    invoke-static {v2}, Lproguard/ftsafe/a/g;->f(Lproguard/ftsafe/a/g;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lproguard/ftsafe/a/a;->p:Lproguard/ftsafe/a/g;

    invoke-static {v3}, Lproguard/ftsafe/a/g;->b(Lproguard/ftsafe/a/g;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lproguard/ftsafe/a/a;->h:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    const/4 v0, 0x2

    new-array v2, v0, [[I

    const/4 v3, 0x1

    new-array v4, v3, [I

    const v5, 0x101009e

    aput v5, v4, v1

    aput-object v4, v2, v1

    new-array v4, v1, [I

    aput-object v4, v2, v3

    new-instance v4, Landroid/content/res/ColorStateList;

    new-array v5, v0, [I

    sget v6, Lproguard/ftsafe/a/a;->l:I

    aput v6, v5, v1

    sget v6, Lproguard/ftsafe/a/a;->m:I

    aput v6, v5, v3

    invoke-direct {v4, v2, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iget-object v2, p0, Lproguard/ftsafe/a/a;->h:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lproguard/ftsafe/a/a;->h:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    iget-object v2, p0, Lproguard/ftsafe/a/a;->h:Landroid/widget/Button;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v2, v0, v3}, Landroid/widget/Button;->setTextSize(IF)V

    iget-object v0, p0, Lproguard/ftsafe/a/a;->h:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lproguard/ftsafe/a/a;->h:Landroid/widget/Button;

    new-instance v1, Lproguard/ftsafe/a/e;

    invoke-direct {v1, p0}, Lproguard/ftsafe/a/e;-><init>(Lproguard/ftsafe/a/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lproguard/ftsafe/a/a;->h:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lproguard/ftsafe/a/a;->g:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Dialog can not be null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lproguard/ftsafe/a/a;->g:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    invoke-direct {p0}, Lproguard/ftsafe/a/a;->d()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Dialog can not be null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
