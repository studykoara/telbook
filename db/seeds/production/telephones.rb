0.upto(8) do |idx|
  Telephone.create(
    number: "(090-9999-999#{idx})",
    cellphone: true,
    friend_id: idx
  )
end

0.upto(29) do |idx|
  Telephone.create(
    number: "(0120-999-99#{idx+10})",
    cellphone: true,
    friend_id: idx+10
  )
end