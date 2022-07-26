.class Lorg/checkerframework/checker/formatter/FormatUtil$Conversion;
.super Ljava/lang/Object;
.source "FormatUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/formatter/FormatUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Conversion"
.end annotation


# instance fields
.field private final cath:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

.field private final index:I


# direct methods
.method public constructor <init>(CI)V
    .registers 4
    .param p1, "c"    # C
    .param p2, "index"    # I

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p2, p0, Lorg/checkerframework/checker/formatter/FormatUtil$Conversion;->index:I

    .line 22
    invoke-static {p1}, Lorg/checkerframework/checker/formatter/qual/ConversionCategory;->fromConversionChar(C)Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/checker/formatter/FormatUtil$Conversion;->cath:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    .line 23
    return-void
.end method


# virtual methods
.method category()Lorg/checkerframework/checker/formatter/qual/ConversionCategory;
    .registers 2

    .line 30
    iget-object v0, p0, Lorg/checkerframework/checker/formatter/FormatUtil$Conversion;->cath:Lorg/checkerframework/checker/formatter/qual/ConversionCategory;

    return-object v0
.end method

.method index()I
    .registers 2

    .line 26
    iget v0, p0, Lorg/checkerframework/checker/formatter/FormatUtil$Conversion;->index:I

    return v0
.end method
