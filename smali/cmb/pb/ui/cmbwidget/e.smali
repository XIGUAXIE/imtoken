.class public Lcmb/pb/ui/cmbwidget/e;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/security/Key;

.field private c:Ljava/util/List;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcmb/pb/ui/cmbwidget/e;->a:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcmb/pb/ui/cmbwidget/e;->b:Ljava/security/Key;

    iput-object v1, p0, Lcmb/pb/ui/cmbwidget/e;->c:Ljava/util/List;

    iput p1, p0, Lcmb/pb/ui/cmbwidget/e;->a:I

    :try_start_0
    const-string p1, "AES"

    invoke-static {p1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object p1

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p1, v1}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    invoke-virtual {p1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object p1

    iput-object p1, p0, Lcmb/pb/ui/cmbwidget/e;->b:Ljava/security/Key;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcmb/pb/ui/cmbwidget/e;->c:Ljava/util/List;

    invoke-static {p2}, Lcmb/pb/util/a;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lt v0, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, v0, 0x1

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcmb/pb/ui/cmbwidget/e;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcmb/pb/ui/cmbwidget/e;->a(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcmb/pb/ui/cmbwidget/e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 1

    if-lez p1, :cond_1

    iget-object v0, p0, Lcmb/pb/ui/cmbwidget/e;->c:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcmb/pb/ui/cmbwidget/e;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcmb/pb/ui/cmbwidget/e;->a:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcmb/pb/util/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcmb/pb/ui/cmbwidget/e;->b:Ljava/security/Key;

    if-eqz v0, :cond_1

    invoke-static {p2, v0}, Lcmb/pb/util/g;->a(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcmb/pb/util/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcmb/pb/ui/cmbwidget/e;->c:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcmb/pb/ui/cmbwidget/e;->b:Ljava/security/Key;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcmb/pb/ui/cmbwidget/e;->c:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcmb/pb/ui/cmbwidget/e;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v2, p0, Lcmb/pb/ui/cmbwidget/e;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcmb/pb/ui/cmbwidget/e;->b:Ljava/security/Key;

    invoke-static {v2, v3}, Lcmb/pb/util/g;->b(Ljava/lang/String;Ljava/security/Key;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcmb/pb/util/a;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    return-object v0

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const-string v0, ""

    return-object v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcmb/pb/ui/cmbwidget/e;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method
