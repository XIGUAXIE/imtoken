.class public Lcmb/pb/ui/cmbwidget/CmbEditText;
.super Landroid/widget/EditText;


# static fields
.field private static c:Ljava/lang/String; = "CmbEditText"

.field private static m:Landroid/widget/PopupWindow;


# instance fields
.field public a:Z

.field public b:Z

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Lcmb/pb/ui/cmbwidget/b;

.field private i:Lcmb/pb/ui/cmbwidget/d;

.field private j:Lcmb/pb/ui/cmbwidget/e;

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Z

.field private n:Landroid/app/Activity;

.field private o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->a:Z

    iput-boolean v0, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->b:Z

    iput v0, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->d:I

    iput v0, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->e:I

    iput-boolean v0, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->f:Z

    iput-boolean v0, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->g:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->h:Lcmb/pb/ui/cmbwidget/b;

    iput-object v1, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->i:Lcmb/pb/ui/cmbwidget/d;

    iput-object v1, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->j:Lcmb/pb/ui/cmbwidget/e;

    iput-object v1, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->k:Landroid/graphics/drawable/Drawable;

    iput-boolean v0, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->l:Z

    iput-object v1, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->n:Landroid/app/Activity;

    const-string v0, ""

    iput-object v0, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->o:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcmb/pb/ui/cmbwidget/CmbEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcmb/pb/ui/cmbwidget/CmbEditText;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->a:Z

    iput-boolean p3, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->b:Z

    iput p3, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->d:I

    iput p3, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->e:I

    iput-boolean p3, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->f:Z

    iput-boolean p3, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->g:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->h:Lcmb/pb/ui/cmbwidget/b;

    iput-object v0, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->i:Lcmb/pb/ui/cmbwidget/d;

    iput-object v0, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->j:Lcmb/pb/ui/cmbwidget/e;

    iput-object v0, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->k:Landroid/graphics/drawable/Drawable;

    iput-boolean p3, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->l:Z

    iput-object v0, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->n:Landroid/app/Activity;

    const-string p3, ""

    iput-object p3, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->o:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcmb/pb/ui/cmbwidget/CmbEditText;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcmb/pb/ui/cmbwidget/CmbEditText;->a()V

    return-void
.end method

.method private a(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcmb/pb/ui/cmbwidget/CmbEditText;->setSelection(I)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    :try_start_0
    invoke-interface {p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p2, v0}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0}, Landroid/util/AttributeSet;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyBoardType"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->d:I

    goto :goto_1

    :cond_1
    const-string v3, "Length"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->e:I

    goto :goto_1

    :cond_2
    const-string v3, "isPassword"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->f:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private a(Landroid/widget/EditText;)V
    .locals 1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    instance-of v0, p1, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    invoke-static {v0, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcmb/pb/ui/cmbwidget/CmbEditText;)V
    .locals 0

    invoke-direct {p0}, Lcmb/pb/ui/cmbwidget/CmbEditText;->e()V

    return-void
.end method

.method static synthetic a(Lcmb/pb/ui/cmbwidget/CmbEditText;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcmb/pb/ui/cmbwidget/CmbEditText;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcmb/pb/ui/cmbwidget/CmbEditText;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0, p1}, Lcmb/pb/ui/cmbwidget/CmbEditText;->a(Landroid/widget/EditText;)V

    return-void
.end method

.method static synthetic a(Lcmb/pb/ui/cmbwidget/CmbEditText;Z)V
    .locals 0

    iput-boolean p1, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->l:Z

    return-void
.end method

.method static synthetic b(Lcmb/pb/ui/cmbwidget/CmbEditText;Z)V
    .locals 0

    iput-boolean p1, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->g:Z

    return-void
.end method

.method static synthetic b(Lcmb/pb/ui/cmbwidget/CmbEditText;)Z
    .locals 0

    iget-boolean p0, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->g:Z

    return p0
.end method

.method static synthetic c(Lcmb/pb/ui/cmbwidget/CmbEditText;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->k:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic d(Lcmb/pb/ui/cmbwidget/CmbEditText;)Z
    .locals 0

    iget-boolean p0, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->l:Z

    return p0
.end method

.method static synthetic e(Lcmb/pb/ui/cmbwidget/CmbEditText;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->n:Landroid/app/Activity;

    return-object p0
.end method

.method private e()V
    .locals 1

    invoke-direct {p0}, Lcmb/pb/ui/cmbwidget/CmbEditText;->f()I

    move-result v0

    invoke-direct {p0, v0}, Lcmb/pb/ui/cmbwidget/CmbEditText;->a(I)V

    return-void
.end method

.method private f()I
    .locals 1

    invoke-virtual {p0}, Lcmb/pb/ui/cmbwidget/CmbEditText;->length()I

    move-result v0

    return v0
.end method

.method private g()V
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcmb/pb/ui/cmbwidget/CmbEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x1

    :try_start_1
    const-class v1, Landroid/widget/EditText;

    const-string/jumbo v3, "setSoftInputShownOnFocus"

    new-array v4, v0, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    const-class v1, Landroid/widget/EditText;

    const-string/jumbo v3, "setShowSoftInputOnFocus"

    new-array v4, v0, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :goto_0
    return-void
.end method

.method private h()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->j:Lcmb/pb/ui/cmbwidget/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcmb/pb/ui/cmbwidget/e;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 4

    :try_start_0
    new-instance v0, Lcmb/pb/ui/cmbwidget/b;

    invoke-direct {v0, p0}, Lcmb/pb/ui/cmbwidget/b;-><init>(Lcmb/pb/ui/cmbwidget/CmbEditText;)V

    iput-object v0, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->h:Lcmb/pb/ui/cmbwidget/b;

    new-instance v0, Lcmb/pb/ui/cmbwidget/d;

    invoke-direct {v0, p0}, Lcmb/pb/ui/cmbwidget/d;-><init>(Lcmb/pb/ui/cmbwidget/CmbEditText;)V

    iput-object v0, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->i:Lcmb/pb/ui/cmbwidget/d;

    invoke-direct {p0}, Lcmb/pb/ui/cmbwidget/CmbEditText;->g()V

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcmb/pb/ui/cmbwidget/CmbEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    invoke-virtual {p0}, Lcmb/pb/ui/cmbwidget/CmbEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iput-object v0, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->k:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcmb/pb/ui/cmbwidget/CmbEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "cmbkb_emotionstore_progresscancelbtn"

    invoke-static {v0, v1, v2}, Lcmb/pb/util/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcmb/pb/ui/cmbwidget/CmbEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->k:Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->k:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v3}, Lcmb/pb/ui/cmbwidget/CmbEditText;->a(Z)V

    new-instance v0, Lcmb/pb/ui/cmbwidget/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcmb/pb/ui/cmbwidget/a;-><init>(Lcmb/pb/ui/cmbwidget/CmbEditText;Lcmb/pb/ui/cmbwidget/a;)V

    invoke-virtual {p0, v0}, Lcmb/pb/ui/cmbwidget/CmbEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v0, Lcmb/pb/ui/cmbwidget/c;

    invoke-direct {v0, p0, v1}, Lcmb/pb/ui/cmbwidget/c;-><init>(Lcmb/pb/ui/cmbwidget/CmbEditText;Lcmb/pb/ui/cmbwidget/c;)V

    invoke-virtual {p0, v0}, Lcmb/pb/ui/cmbwidget/CmbEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-boolean v0, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->f:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcmb/pb/ui/cmbwidget/e;

    iget v1, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->e:I

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcmb/pb/ui/cmbwidget/e;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->j:Lcmb/pb/ui/cmbwidget/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected a(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->k:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcmb/pb/ui/cmbwidget/CmbEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0}, Lcmb/pb/ui/cmbwidget/CmbEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {p0}, Lcmb/pb/ui/cmbwidget/CmbEditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-virtual {p0, v0, v1, p1, v2}, Lcmb/pb/ui/cmbwidget/CmbEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public b()V
    .locals 1

    const-string v0, ""

    invoke-super {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->j:Lcmb/pb/ui/cmbwidget/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcmb/pb/ui/cmbwidget/e;->c()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 4

    iget-object v0, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->n:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcmb/pb/cmbsafe/b;->a:Ljava/lang/Boolean;

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcmb/pb/cmbsafe/b;->a(Landroid/app/Application;Lcmb/pb/ui/cmbwidget/CmbEditText;)V

    const-string/jumbo v0, "showCMBKeyboardWindow2"

    invoke-static {v0}, Lcmb/pb/cmbsafe/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->n:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->n:Landroid/app/Activity;

    const-class v3, Lcmb/pb/cmbsafe/CmbService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcmb/pb/ui/cmbwidget/CmbEditText;->showCMBKeyboardWindow2()V

    :goto_0
    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->g:Z

    return-void
.end method

.method public getEnctyptText()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcmb/pb/ui/cmbwidget/CmbEditText;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->o:Ljava/lang/String;

    invoke-static {v0, v1}, Lcmb/pb/util/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInputLength()I
    .locals 1

    iget-object v0, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->j:Lcmb/pb/ui/cmbwidget/e;

    invoke-virtual {v0}, Lcmb/pb/ui/cmbwidget/e;->a()I

    move-result v0

    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcmb/pb/ui/cmbwidget/CmbEditText;->a(Z)V

    return-void
.end method

.method public setInputType(I)V
    .locals 0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Landroid/widget/EditText;->setInputType(I)V

    return-void
.end method

.method public setRecvTouchEventActivity(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->n:Landroid/app/Activity;

    return-void
.end method

.method public setSessionID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->o:Ljava/lang/String;

    return-void
.end method

.method public showCMBKeyboardWindow2()V
    .locals 4

    iget-boolean v0, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->g:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->g:Z

    :try_start_0
    invoke-virtual {p0, v0}, Lcmb/pb/ui/cmbwidget/CmbEditText;->setCursorVisible(Z)V

    invoke-virtual {p0, v0}, Lcmb/pb/ui/cmbwidget/CmbEditText;->setFocusable(Z)V

    invoke-virtual {p0}, Lcmb/pb/ui/cmbwidget/CmbEditText;->requestFocus()Z

    const-wide/16 v1, 0x64

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    iget-object v1, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->h:Lcmb/pb/ui/cmbwidget/b;

    invoke-static {v1}, Lcmb/pb/ui/PBKeyboardActivity;->a(Landroid/os/Handler;)V

    iget-boolean v1, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->f:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->j:Lcmb/pb/ui/cmbwidget/e;

    invoke-static {v1}, Lcmb/pb/ui/PBKeyboardActivity;->a(Lcmb/pb/ui/cmbwidget/e;)V

    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "IsPassword"

    iget-boolean v3, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->f:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "Hint"

    invoke-virtual {p0}, Lcmb/pb/ui/cmbwidget/CmbEditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v2, "KeyboardType"

    iget v3, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->d:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "Length"

    iget v3, p0, Lcmb/pb/ui/cmbwidget/CmbEditText;->e:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "OldText"

    invoke-virtual {p0}, Lcmb/pb/ui/cmbwidget/CmbEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "UseHandler"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcmb/pb/ui/cmbwidget/CmbEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcmb/pb/ui/PBKeyboardActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcmb/pb/ui/cmbwidget/CmbEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    sget v2, Lcmb/pb/ui/PBKeyboardActivity;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
