<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Donation Receipt</title>
  <style>
    body {
      font-family: 'Arial', sans-serif;
      background: #f2f2f2;
      margin: 0;
      padding: 20px;
    }

    .receipt-container {
      max-width: 700px;
      margin: auto;
      background: #fff;
      padding: 30px;
      border: 1px solid #ccc;
      box-shadow: 0 0 10px rgba(0,0,0,0.05);
    }

    .receipt-header {
      text-align: center;
      border-bottom: 2px solid #eee;
      padding-bottom: 10px;
    }

    .receipt-header h2 {
      margin: 0;
    }

    .receipt-header p {
      font-size: 14px;
      color: #555;
      margin: 3px 0;
    }

    .receipt-info {
      margin-top: 20px;
      font-size: 15px;
    }

    .receipt-info td {
      padding: 5px 10px;
    }

    .donation-table {
      width: 100%;
      margin-top: 30px;
      border-collapse: collapse;
      font-size: 14px;
    }

    .donation-table th,
    .donation-table td {
      border: 1px solid #ccc;
      padding: 10px;
      text-align: left;
    }

    .donation-table th {
      background-color: #f8f8f8;
    }

    .total-row td {
      font-weight: bold;
      border-top: 2px solid #000;
    }

    .footer {
      margin-top: 40px;
      font-size: 12px;
      text-align: center;
      color: #777;
    }

    .signature {
      margin-top: 50px;
      text-align: right;
    }

    .signature p {
      margin: 4px 0;
    }
  </style>
</head>
<body>

<div class="receipt-container">
  <div class="receipt-header">
    <h2>{{ $data['company']['name'] }}</h2>
    <p>{{ $data['company']['address'] }}</p>
    {{-- <p>Email: info@hopeforall.org | Tel: (555) 123-4567</p> --}}
    <p>Email: {{ $data['company']['email'] }}</p>
  </div>

  <table class="receipt-info">
    <tr>
      <td><strong>Donor Name:</strong></td>
      <td>{{ $data['donation']->full_name }} ( {{ $data['donation']->country }} )</td>
    </tr>
    <tr>
      <td><strong>Donor Email:</strong></td>
      <td>{{ $data['donation']->email }}</td>
    </tr>
    <tr>
      <td><strong>Donor Phone:</strong></td>
      <td>{{ $data['donation']->phone }}</td>
    </tr>
    <tr>
      <td><strong>Receipt Number:</strong></td>
      <td>ALF-{{  sprintf("%010d", $data['donation']->receipt_id) }}</td>
    </tr>
    <tr>
      <td><strong>Date:</strong></td>
      <td>{{ date('d F , Y h:i:s A',strtotime($data['donation']->updated_at)) }}</td>
    </tr>
    <tr>
      <td><strong>Payment Method:</strong></td>
      <td>{{ $data['donation']->payment_method }}</td>
    </tr>
    <tr>
      <td><strong>Payment ID:</strong></td>
      <td><a target="__blank" href="{{ $data['stripe_data']->receipt_url }}">{{ $data['stripe_data']->payment_id }}</a></td>
    </tr>
  </table>

  <table class="donation-table">
    <thead>
      <tr>
        <th>Description</th>
        <th style="width:20%">Amount (USD)</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>{{ $data['donation']->donation_type }}</td>
        <td>${{ $data['donation']->donation }}</td>
      </tr>
{{--       
      <tr class="total-row">
        <td>Total Donated</td>
        <td>{{ $data['donation']->donation }}</td>
      </tr> --}}
    </tbody>
  </table>

  {{-- <div class="signature">
    <p>On behalf on {{ $data['company']['name'] }} </p>
    <p>_________________________</p>
    <p>Director, Hope for All Foundation</p>
  </div> --}}

  <div class="footer">
    <p>{{ $data['company']['name'] }} is a registered nonprofit organization.</p>
    <p>No goods or services were provided in exchange for this donation.</p>
    <p>Please retain this receipt for your records.</p>
  </div>
</div>

</body>
</html>
