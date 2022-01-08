.class public Lcom/alipay/sdk/widget/p;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/widget/p$c;,
        Lcom/alipay/sdk/widget/p$b;,
        Lcom/alipay/sdk/widget/p$a;
    }
.end annotation


# static fields
.field private static f:Landroid/os/Handler;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ProgressBar;

.field private e:Landroid/webkit/WebView;

.field private g:Lcom/alipay/sdk/widget/p$a;

.field private h:Lcom/alipay/sdk/widget/p$b;

.field private i:Lcom/alipay/sdk/widget/p$c;

.field private final j:Lcom/alipay/sdk/sys/a;

.field private k:Landroid/view/View$OnClickListener;

.field private final l:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/alipay/sdk/widget/p;->f:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/alipay/sdk/sys/a;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance p2, Lcom/alipay/sdk/widget/q;

    invoke-direct {p2, p0}, Lcom/alipay/sdk/widget/q;-><init>(Lcom/alipay/sdk/widget/p;)V

    iput-object p2, p0, Lcom/alipay/sdk/widget/p;->k:Landroid/view/View$OnClickListener;

    .line 79
    iput-object p3, p0, Lcom/alipay/sdk/widget/p;->j:Lcom/alipay/sdk/sys/a;

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lcom/alipay/sdk/widget/p;->l:F

    const/4 p2, 0x1

    .line 81
    invoke-virtual {p0, p2}, Lcom/alipay/sdk/widget/p;->setOrientation(I)V

    .line 82
    invoke-direct {p0, p1}, Lcom/alipay/sdk/widget/p;->a(Landroid/content/Context;)V

    .line 83
    invoke-direct {p0, p1}, Lcom/alipay/sdk/widget/p;->b(Landroid/content/Context;)V

    .line 84
    invoke-direct {p0, p1}, Lcom/alipay/sdk/widget/p;->c(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alipay/sdk/sys/a;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, v0, p2}, Lcom/alipay/sdk/widget/p;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/alipay/sdk/sys/a;)V

    return-void
.end method

.method private a(I)I
    .locals 1

    int-to-float p1, p1

    .line 307
    iget v0, p0, Lcom/alipay/sdk/widget/p;->l:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method static synthetic a(Lcom/alipay/sdk/widget/p;)Lcom/alipay/sdk/widget/p$c;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alipay/sdk/widget/p;->i:Lcom/alipay/sdk/widget/p$c;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 9

    .line 89
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v1, -0xd000001

    .line 90
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const/4 v1, 0x0

    .line 91
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v2, 0x10

    .line 92
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 96
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alipay/sdk/widget/p;->a:Landroid/widget/ImageView;

    .line 97
    iget-object v3, p0, Lcom/alipay/sdk/widget/p;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v2, p0, Lcom/alipay/sdk/widget/p;->a:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 99
    iget-object v2, p0, Lcom/alipay/sdk/widget/p;->a:Landroid/widget/ImageView;

    const-string v3, "iVBORw0KGgoAAAANSUhEUgAAAEgAAABIBAMAAACnw650AAAAFVBMVEUAAAARjusRkOkQjuoRkeoRj+oQjunya570AAAABnRSTlMAinWeSkk7CjRNAAAAZElEQVRIx+3MOw6AIBQF0YsrMDGx1obaLeGH/S9BQgkJ82rypp4ceTN1ilvyKizmZIAyU7FML0JVYig55BBAfQ2EU4V4CpZJ+2AiSj11C6rUoTannBpRn4W6xNQjLBSI2+TN0w/+3HT2wPClrQAAAABJRU5ErkJggg=="

    invoke-static {v3, p1}, Lcom/alipay/sdk/util/k;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 100
    iget-object v2, p0, Lcom/alipay/sdk/widget/p;->a:Landroid/widget/ImageView;

    const/16 v3, 0xc

    invoke-direct {p0, v3}, Lcom/alipay/sdk/widget/p;->a(I)I

    move-result v4

    invoke-direct {p0, v3}, Lcom/alipay/sdk/widget/p;->a(I)I

    move-result v5

    invoke-virtual {v2, v4, v1, v5, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 101
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 103
    iget-object v5, p0, Lcom/alipay/sdk/widget/p;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v5, -0x262627

    .line 106
    invoke-virtual {v2, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 107
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/alipay/sdk/widget/p;->a(I)I

    move-result v7

    const/16 v8, 0x19

    invoke-direct {p0, v8}, Lcom/alipay/sdk/widget/p;->a(I)I

    move-result v8

    invoke-direct {v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 108
    invoke-virtual {v0, v2, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alipay/sdk/widget/p;->b:Landroid/widget/TextView;

    const v5, -0xeeeeef

    .line 111
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    iget-object v2, p0, Lcom/alipay/sdk/widget/p;->b:Landroid/widget/TextView;

    const/high16 v5, 0x41880000    # 17.0f

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 113
    iget-object v2, p0, Lcom/alipay/sdk/widget/p;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 114
    iget-object v2, p0, Lcom/alipay/sdk/widget/p;->b:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 115
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v6, 0x11

    .line 117
    invoke-direct {p0, v6}, Lcom/alipay/sdk/widget/p;->a(I)I

    move-result v6

    invoke-virtual {v2, v6, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/high16 v6, 0x3f800000    # 1.0f

    .line 118
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 119
    iget-object v6, p0, Lcom/alipay/sdk/widget/p;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/alipay/sdk/widget/p;->c:Landroid/widget/ImageView;

    .line 122
    iget-object v6, p0, Lcom/alipay/sdk/widget/p;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v2, p0, Lcom/alipay/sdk/widget/p;->c:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 124
    iget-object v2, p0, Lcom/alipay/sdk/widget/p;->c:Landroid/widget/ImageView;

    const-string v6, "iVBORw0KGgoAAAANSUhEUgAAAEgAAABICAMAAABiM0N1AAAAmVBMVEUAAAARj+oQjuoRkOsVk/AQj+oRjuoQj+oSkO3///8Rj+kRj+oQkOsTk+whm/8Qj+oRj+oQj+oSkus2p/8QjuoQj+oQj+oQj+oQj+oRj+oTkuwRj+oQj+oRj+oRj+oSkOsSkO0ZlfMbk+8XnPgQj+oRj+oQj+oQj+sSj+sRkOoSkescqv8Rj+oQj+oSj+sXku4Rj+kQjuoQjumXGBCVAAAAMnRSTlMAxPtPF8ry7CoB9npbGwe6lm0wBODazb1+aSejm5GEYjcTDwvls6uJc0g/CdWfRCF20AXrk5QAAAJqSURBVFjD7ZfXmpswEIUFphmDCxi3talurGvm/R8uYSDe5FNBwlzsxf6XmvFBmiaZ/PCdWDk9CWn61OhHCMAaXfoRAth7wx6EkMXnWyrho4yg4bDpquI8Jy78Q7eoj9cmUFijsaLM0JsD9CD0uQAa9aNdPuCFvbA7B9t/Becap8Pu6Q/2jcyH81VHc/WCHDQZXwbvtUhQ61iDlqadncU6Rp31yGkZIzOAu7AjtPpYGREzq/pY5DRFHS1siyO6HfkOKTrMjdb2qevV4zosK7MbkFY2LmYk55hL6juCIFWMOI2KGzblmho3b18EIbxL1hs6r5m2Q2WaEElwS3NW4xh6ZZJuzTtUsBKT4G0h35s4y1mNgkNoS6TZ8SKBXTZQGBNYdPTozXGYKoyLAmOasttjThT4xT6Ch+2qIjRhV9Ja3NC87Kyo5We1vCNEMW1T+j1VLZ9UhE54Q1DL52r5piJ0YxdegvWlHOwTu76uKkJX+MOTHno4YFSEbHYdhViojsLrCTg/MKnhKWaEYzvkZFM8aOkPH7iTSvoFZKD7jGEJbarkRaxQyOeWvGVIbsji152jK7TbDgRzcIuz7SGj89BFU8d30TqWeDtrILxyTkD1IXfvmHseuU3lVHDz607bw0f3xDqejm5ncd0j8VDwfoibRy8RcgTkWHBvocbDbMlJsQAkGnAOHwGy90kLmQY1Wkob07/GaCNRIzdoWK7/+6y/XkLDJCcynOGFuUrKIMuCMonNr9VpSOQoIxBgJ0SacGbzZNy4ICrkscvU2fpElYz+U3sd+aQThjfVmjNa5i15kLcojM3Gz8kP34jf4VaV3X55gNEAAAAASUVORK5CYII="

    invoke-static {v6, p1}, Lcom/alipay/sdk/util/k;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 125
    iget-object p1, p0, Lcom/alipay/sdk/widget/p;->c:Landroid/widget/ImageView;

    invoke-direct {p0, v3}, Lcom/alipay/sdk/widget/p;->a(I)I

    move-result v2

    invoke-direct {p0, v3}, Lcom/alipay/sdk/widget/p;->a(I)I

    move-result v3

    invoke-virtual {p1, v2, v1, v3, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 126
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 128
    iget-object v1, p0, Lcom/alipay/sdk/widget/p;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v1, 0x30

    invoke-direct {p0, v1}, Lcom/alipay/sdk/widget/p;->a(I)I

    move-result v1

    invoke-direct {p1, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 131
    invoke-virtual {p0, v0, p1}, Lcom/alipay/sdk/widget/p;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic b()Landroid/os/Handler;
    .locals 1

    .line 37
    sget-object v0, Lcom/alipay/sdk/widget/p;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/sdk/widget/p;)Landroid/widget/ImageView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alipay/sdk/widget/p;->a:Landroid/widget/ImageView;

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .locals 3

    .line 135
    new-instance v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    const v2, 0x103001f

    invoke-direct {v0, p1, v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/alipay/sdk/widget/p;->d:Landroid/widget/ProgressBar;

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x108006c

    .line 138
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 137
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    iget-object p1, p0, Lcom/alipay/sdk/widget/p;->d:Landroid/widget/ProgressBar;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 140
    iget-object p1, p0, Lcom/alipay/sdk/widget/p;->d:Landroid/widget/ProgressBar;

    const v0, -0xd000001

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setBackgroundColor(I)V

    .line 141
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x2

    .line 142
    invoke-direct {p0, v0}, Lcom/alipay/sdk/widget/p;->a(I)I

    move-result v0

    const/4 v1, -0x1

    invoke-direct {p1, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 143
    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->d:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0, p1}, Lcom/alipay/sdk/widget/p;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic c(Lcom/alipay/sdk/widget/p;)Landroid/widget/ImageView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alipay/sdk/widget/p;->c:Landroid/widget/ImageView;

    return-object p0
.end method

.method private c(Landroid/content/Context;)V
    .locals 4

    .line 147
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/sdk/widget/p;->e:Landroid/webkit/WebView;

    const/4 v1, 0x1

    .line 148
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 149
    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->e:Landroid/webkit/WebView;

    invoke-virtual {p0, v0, p1}, Lcom/alipay/sdk/widget/p;->a(Landroid/webkit/WebView;Landroid/content/Context;)V

    .line 151
    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 152
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    const-wide/32 v2, 0x500000

    .line 153
    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 156
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 157
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 p1, -0x1

    .line 158
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 160
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 161
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v2, 0x0

    .line 162
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 163
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 164
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->e:Landroid/webkit/WebView;

    const-string/jumbo v1, "searchBoxJavaBridge_"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->e:Landroid/webkit/WebView;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->e:Landroid/webkit/WebView;

    const-string v1, "accessibilityTraversal"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :catch_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 176
    iget-object p1, p0, Lcom/alipay/sdk/widget/p;->e:Landroid/webkit/WebView;

    invoke-virtual {p0, p1, v0}, Lcom/alipay/sdk/widget/p;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic d(Lcom/alipay/sdk/widget/p;)Landroid/widget/ProgressBar;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alipay/sdk/widget/p;->d:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic e(Lcom/alipay/sdk/widget/p;)Lcom/alipay/sdk/widget/p$a;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alipay/sdk/widget/p;->g:Lcom/alipay/sdk/widget/p$a;

    return-object p0
.end method

.method static synthetic f(Lcom/alipay/sdk/widget/p;)Lcom/alipay/sdk/widget/p$b;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/alipay/sdk/widget/p;->h:Lcom/alipay/sdk/widget/p$b;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 297
    invoke-virtual {p0}, Lcom/alipay/sdk/widget/p;->removeAllViews()V

    .line 298
    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 299
    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->e:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 300
    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 301
    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method protected a(Landroid/webkit/WebView;Landroid/content/Context;)V
    .locals 3

    .line 182
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 184
    iget-object v2, p0, Lcom/alipay/sdk/widget/p;->j:Lcom/alipay/sdk/sys/a;

    invoke-static {v2, p2}, Lcom/alipay/sdk/util/n;->a(Lcom/alipay/sdk/sys/a;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AlipaySDK("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "15.7.4"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 187
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;[B)V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    return-void
.end method

.method public getBackButton()Landroid/widget/ImageView;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getProgressbar()Landroid/widget/ProgressBar;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->d:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public getRefreshButton()Landroid/widget/ImageView;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTitle()Landroid/widget/TextView;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->e:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/alipay/sdk/widget/p;->e:Landroid/webkit/WebView;

    return-object v0
.end method

.method public setChromeProxy(Lcom/alipay/sdk/widget/p$a;)V
    .locals 1

    .line 191
    iput-object p1, p0, Lcom/alipay/sdk/widget/p;->g:Lcom/alipay/sdk/widget/p$a;

    if-nez p1, :cond_0

    .line 193
    iget-object p1, p0, Lcom/alipay/sdk/widget/p;->e:Landroid/webkit/WebView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    goto :goto_0

    .line 195
    :cond_0
    iget-object p1, p0, Lcom/alipay/sdk/widget/p;->e:Landroid/webkit/WebView;

    new-instance v0, Lcom/alipay/sdk/widget/s;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/widget/s;-><init>(Lcom/alipay/sdk/widget/p;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    :goto_0
    return-void
.end method

.method public setWebClientProxy(Lcom/alipay/sdk/widget/p$b;)V
    .locals 1

    .line 222
    iput-object p1, p0, Lcom/alipay/sdk/widget/p;->h:Lcom/alipay/sdk/widget/p$b;

    if-nez p1, :cond_0

    .line 224
    iget-object p1, p0, Lcom/alipay/sdk/widget/p;->e:Landroid/webkit/WebView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto :goto_0

    .line 226
    :cond_0
    iget-object p1, p0, Lcom/alipay/sdk/widget/p;->e:Landroid/webkit/WebView;

    new-instance v0, Lcom/alipay/sdk/widget/t;

    invoke-direct {v0, p0}, Lcom/alipay/sdk/widget/t;-><init>(Lcom/alipay/sdk/widget/p;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :goto_0
    return-void
.end method

.method public setWebEventProxy(Lcom/alipay/sdk/widget/p$c;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/alipay/sdk/widget/p;->i:Lcom/alipay/sdk/widget/p$c;

    return-void
.end method
