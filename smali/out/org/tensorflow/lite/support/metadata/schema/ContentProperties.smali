.class public final Lorg/tensorflow/lite/support/metadata/schema/ContentProperties;
.super Ljava/lang/Object;
.source "ContentProperties.java"


# static fields
.field public static final BoundingBoxProperties:B = 0x3t

.field public static final FeatureProperties:B = 0x1t

.field public static final ImageProperties:B = 0x2t

.field public static final NONE:B

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 12
    const-string v0, "NONE"

    const-string v1, "FeatureProperties"

    const-string v2, "ImageProperties"

    const-string v3, "BoundingBoxProperties"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/tensorflow/lite/support/metadata/schema/ContentProperties;->names:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static name(I)Ljava/lang/String;
    .registers 2
    .param p0, "e"    # I

    .line 14
    sget-object v0, Lorg/tensorflow/lite/support/metadata/schema/ContentProperties;->names:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method
