.class La/a/a/a/a/f;
.super La/a/a/a/a/a;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/net/Uri;


# direct methods
.method constructor <init>(La/a/a/a/a/a;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, La/a/a/a/a/a;-><init>(La/a/a/a/a/a;)V

    iput-object p2, p0, La/a/a/a/a/f;->a:Landroid/content/Context;

    iput-object p3, p0, La/a/a/a/a/f;->b:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    :try_start_0
    invoke-virtual {p0}, La/a/a/a/a/f;->f()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-virtual {p0}, La/a/a/a/a/f;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, La/a/a/a/a/f;->a:Landroid/content/Context;

    iget-object v1, p0, La/a/a/a/a/f;->b:Landroid/net/Uri;

    invoke-static {v0, v1}, La/a/a/a/a/c;->a(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, La/a/a/a/a/f;->a:Landroid/content/Context;

    iget-object v1, p0, La/a/a/a/a/f;->b:Landroid/net/Uri;

    invoke-static {v0, v1}, La/a/a/a/a/c;->b(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()J
    .locals 2

    iget-object v0, p0, La/a/a/a/a/f;->a:Landroid/content/Context;

    iget-object v1, p0, La/a/a/a/a/f;->b:Landroid/net/Uri;

    invoke-static {v0, v1}, La/a/a/a/a/c;->c(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method public f()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    iget-object v0, p0, La/a/a/a/a/f;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, La/a/a/a/a/f;->g()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public g()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, La/a/a/a/a/f;->b:Landroid/net/Uri;

    return-object v0
.end method
