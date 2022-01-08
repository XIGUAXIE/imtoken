.class public final Lcn/jiguang/analytics/android/d;
.super Ljava/lang/Object;


# static fields
.field public static a:Z = false

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static d:Z

.field public static e:J

.field public static f:Z

.field public static g:Z

.field public static h:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".janalytics"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/jiguang/analytics/android/d;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcn/jiguang/analytics/android/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/jiguang/analytics/android/d;->c:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcn/jiguang/analytics/android/d;->d:Z

    const-wide/16 v1, 0x7530

    sput-wide v1, Lcn/jiguang/analytics/android/d;->e:J

    const/4 v1, 0x1

    sput-boolean v1, Lcn/jiguang/analytics/android/d;->f:Z

    sput-boolean v1, Lcn/jiguang/analytics/android/d;->g:Z

    sput v0, Lcn/jiguang/analytics/android/d;->h:I

    return-void
.end method
